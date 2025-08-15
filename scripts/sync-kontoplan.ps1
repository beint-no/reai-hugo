# Sync kontoplan blogs from static-content-generator into Hugo content bundles
param(
  [string]$Source = "..\..\static-content-generator\reaia\blogs\kontoplan",
  [string]$Destination = "..\content\blog\kontoplan",
  [switch]$Clean
)

$ErrorActionPreference = 'Stop'

# Resolve to absolute paths relative to this script location
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourcePath = Join-Path $scriptDir $Source
$destPath = Join-Path $scriptDir $Destination

if (-not (Test-Path $sourcePath)) {
  Write-Error "Source path not found: $sourcePath"
}

if (-not (Test-Path $destPath)) {
  New-Item -ItemType Directory -Force -Path $destPath | Out-Null
}

Write-Host "Source:" (Resolve-Path $sourcePath)
Write-Host "Destination:" (Resolve-Path $destPath)

# Optionally clean existing destination content (preserve _index.md if present)
if ($Clean) {
  Write-Host "Cleaning existing kontoplan content in" (Resolve-Path $destPath)
  Get-ChildItem -Path $destPath | ForEach-Object {
    if ($_.PSIsContainer) {
      Remove-Item -Recurse -Force -Path $_.FullName
    } else {
      if ($_.Name -ne '_index.md') {
        Remove-Item -Force -Path $_.FullName
      }
    }
  }
}

function Parse-MetadataYaml {
  param([string]$YamlPath)
  $meta = @{}
  $lines = Get-Content -Path $YamlPath -Raw -Encoding UTF8 -ErrorAction Stop -ReadCount 0 -TotalCount 0
  foreach ($line in ($lines -split "`n")) {
    if ($line -match '^[ \t]*#') { continue }
    if ($line.Trim().Length -eq 0) { continue }
    if ($line -match '^[ \t]*([A-Za-z0-9_]+)[ \t]*:[ \t]*(.*)$') {
      $key = $matches[1]
      $val = $matches[2].Trim()
      if ($val.StartsWith('"') -and $val.EndsWith('"')) { $val = $val.Substring(1, $val.Length-2) }
      if ($val.StartsWith("'") -and $val.EndsWith("'")) { $val = $val.Substring(1, $val.Length-2) }
      $meta[$key] = $val
    }
  }
  return $meta
}

# Escape values for inclusion in YAML double-quoted scalars
function Escape-YamlValue {
  param([string]$Value)
  if ($null -eq $Value) { return '' }
  # Escape backslashes and double quotes
  $escaped = $Value -replace '\\', '\\\\'
  $escaped = $escaped -replace '"', '\\"'
  return $escaped
}

Get-ChildItem -Path $sourcePath -Directory | ForEach-Object {
  $dir = $_
  $metaPath = Join-Path $dir.FullName 'article_metadata.yml'
  $articlePath = Join-Path $dir.FullName 'article.md'
  if (-not (Test-Path $metaPath) -or -not (Test-Path $articlePath)) {
    Write-Warning "Skipping '$($dir.Name)': missing metadata or article.md"
    return
  }

  $meta = Parse-MetadataYaml -YamlPath $metaPath
  $handle = if ($meta.ContainsKey('handle') -and $meta.handle) { $meta.handle } else { $dir.Name }
  $title = if ($meta.ContainsKey('title')) { $meta.title } else { $dir.Name }
  $summary = if ($meta.ContainsKey('summary')) { $meta.summary } else { '' }
  $image = if ($meta.ContainsKey('image')) { $meta.image } else { '' }
  $imageAlt = if ($meta.ContainsKey('image_alt')) { $meta.image_alt } else { '' }
  $metaTitle = if ($meta.ContainsKey('meta_title')) { $meta.meta_title } else { '' }
  $metaDescription = if ($meta.ContainsKey('meta_description')) { $meta.meta_description } else { '' }

  $destDir = Join-Path $destPath $handle
  if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Force -Path $destDir | Out-Null }

  # Copy assets (SVGs and any other referenced files)
  Get-ChildItem -Path $dir.FullName -File | Where-Object { $_.Extension -in '.svg','.png','.jpg','.jpeg','.webp' } | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination (Join-Path $destDir $_.Name) -Force
  }

  # Compose index.md with front matter + original markdown body
  $frontMatter = @()
  $frontMatter += '---'
  $frontMatter += ('title: "{0}"' -f (Escape-YamlValue $title))
  $frontMatter += ('slug: {0}' -f $handle)
  if ($summary) { $frontMatter += ('summary: "{0}"' -f (Escape-YamlValue $summary)) }
  if ($image) { $frontMatter += ('featured_image: "{0}"' -f (Escape-YamlValue $image)) }
  if ($imageAlt) { $frontMatter += ('featured_image_alt: "{0}"' -f (Escape-YamlValue $imageAlt)) }
  if ($metaTitle) { $frontMatter += ('meta_title: "{0}"' -f (Escape-YamlValue $metaTitle)) }
  if ($metaDescription) { $frontMatter += ('meta_description: "{0}"' -f (Escape-YamlValue $metaDescription)) }
  $frontMatter += 'type: "blog"'
  $frontMatter += 'layout: "pages/single"'
  $frontMatter += '---'

  $body = Get-Content -Path $articlePath -Raw -Encoding UTF8
  $indexPath = Join-Path $destDir 'index.md'
  # Write with UTF-8 without BOM to preserve formatting/encoding
  $content = ($frontMatter -join "`n") + "`n`n" + $body.Trim() + "`n"
  [System.IO.File]::WriteAllText($indexPath, $content, [System.Text.UTF8Encoding]::new($false))

  Write-Host "Synced: $handle"
}
