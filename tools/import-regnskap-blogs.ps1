param(
  [string]$SourceDir = "c:\\Users\\tahir\\Documents\\Desktop\\projects\\static-content-generator\\reaia\\blogs\\regnskap",
  [string]$DestRoot = "c:\\Users\\tahir\\Documents\\Desktop\\projects\\rc\\content\\blog\\regnskap"
)

# Ensure destination root exists
New-Item -ItemType Directory -Path $DestRoot -Force | Out-Null

# Helper: simple YAML key:value parser for flat fields
function Parse-Metadata {
  param([string]$Path)
  $meta = @{}
  if (!(Test-Path $Path)) { return $meta }
  Get-Content -LiteralPath $Path -Encoding utf8 -Raw | ForEach-Object {
    $_ -split "`n" | ForEach-Object {
      if ($_ -match '^(?<k>[^:#]+):\s*(?<v>.*)$') {
        $k = ($matches['k']).Trim()
        $v = ($matches['v']).Trim()
        # remove surrounding quotes if present
        if ($v -match '^("|\'')(.*)(\1)$') { $v = $matches[2] }
        $meta[$k] = $v
      }
    }
  }
  return $meta
}

# Process each article directory
Get-ChildItem -LiteralPath $SourceDir -Directory | ForEach-Object {
  $srcDir = $_.FullName
  $mdPath = Join-Path $srcDir 'article.md'
  $yamlPath = Join-Path $srcDir 'article_metadata.yml'
  if (!(Test-Path $mdPath)) { return }

  $meta = Parse-Metadata -Path $yamlPath
  $title = $meta['title']; if (-not $title) { $title = $_.Name }
  $summary = $meta['summary']
  $description = $meta['meta_description']
  $handle = $meta['handle']; if (-not $handle) { $handle = ($_.Name -replace '[^a-zA-Z0-9-]','-').ToLower() }
  $image = $meta['image']
  $imageAlt = $meta['image_alt']

  $destDir = Join-Path $DestRoot $handle
  New-Item -ItemType Directory -Path $destDir -Force | Out-Null

  # Copy assets (all except article.md and metadata)
  Get-ChildItem -LiteralPath $srcDir -File | Where-Object { $_.Name -notin @('article.md','article_metadata.yml') } | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $destDir $_.Name) -Force
  }

  # Read article body
  $body = Get-Content -LiteralPath $mdPath -Encoding utf8 -Raw

  # Escape double quotes for YAML quoting
  function Quote-Yaml([string]$s) {
    if (-not $s) { return $null }
    return '"' + ($s -replace '"', '\\"') + '"'
  }

  function Format-YamlField([string]$key, [string]$value) {
    if (-not $value) { return $null }
    # Use block scalar if value contains characters that often break inline YAML
    if ($value -match '[:\[\]"\(\)\n]') {
      $indented = ($value -split "`n" | ForEach-Object { '  ' + $_ }) -join "`n"
      return @(
        "${key}: |",
        $indented
      )
    }
    return ("${key}: " + (Quote-Yaml $value))
  }

  # Build front matter
  $url = "/blogs/regnskap/$handle/"
  $frontMatter = @()
  $frontMatter += '---'
  $frontMatter += ("title: " + (Quote-Yaml $title))
  $sf = Format-YamlField -key 'summary' -value $summary
  if ($sf) { $frontMatter += $sf }
  $df = Format-YamlField -key 'description' -value $description
  if ($df) { $frontMatter += $df }
  $frontMatter += "slug: $handle"
  if ($image) { $frontMatter += "featured_image: $image" }
  if ($imageAlt) { $frontMatter += ("featured_image_alt: " + (Quote-Yaml $imageAlt)) }
  $frontMatter += ("url: " + (Quote-Yaml $url))
  $frontMatter += "draft: false"
  $frontMatter += '---'
  $front = ($frontMatter -join "`n")

  # Write index.md as UTF-8 without BOM for Hugo
  $indexPath = Join-Path $destDir 'index.md'
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($indexPath, ($front + "`n`n" + $body), $utf8NoBom)

  Write-Host "Imported: $handle"
}

Write-Host "Done. Imported blog bundles to: $DestRoot"
