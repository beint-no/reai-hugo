---
title: "Primtall"
meta_title: "Primtall"
meta_description: '**Primtall** er heltall stÃ¸rre enn 1 som kun er delelige med 1 og seg selv. Dette abstrakte, men viktige, **matematiske konseptet** har sentrale anvendelser i ...'
slug: primtall
type: blog
layout: pages/single
---

**Primtall** er heltall stÃ¸rre enn 1 som kun er delelige med 1 og seg selv. Dette abstrakte, men viktige, **matematiske konseptet** har sentrale anvendelser i **norsk regnskap**, sÃ¦rlig innen modulÃ¦r aritmetikk for kontrollsifferalgoritmer.

![Primtall](primtall-image.svg)

## Definisjon og egenskaper

Et primtall *p* oppfyller kun divisjonsrelasjonene *1 â‰¤ p* og *p â‰¤ p*. De fÃ¸rste primtallene er:

| Rang | Primtall |
|-----:|:---------|
| 1    | 2        |
| 2    | 3        |
| 3    | 5        |
| 4    | 7        |
| 5    | 11       |
| 6    | 13       |
| 7    | 17       |
| 8    | 19       |

Primtallene **2, 3, 5, 7, 11, 13, 17, 19** vises ogsÃ¥ grafisk nedenfor:

![Primetallsekvens fra 1 til 20](primtall-sekvens.svg)

## Fordelinger og teoremer

En grunnleggende setning i tallteori er **primtallsatsen**, som beskriver fordelingen av primtall blant de positive heltallene. Kort fortalt sier den at antallet primtall mindre enn *n* er om lag *n / ln(n)*.

**Viktige egenskaper**:

* Det finnes uendelig mange primtall (Euclids bevis).
* Primtallene blir sjeldnere jo stÃ¸rre tallene blir, men de forsvinner ikke.
* Avstanden mellom pÃ¥fÃ¸lgende primtall kan variere betydelig.

## Anvendelser i norsk regnskap

I regnskap og finansielle systemer benyttes primtall spesielt i **modulÃ¦r aritmetikk** ved beregning av kontrollsiffer for bankkontonummer, organisasjonsnummer og andre identifikatorer.

For eksempel i [Hva er Kontonummer?](/blogs/regnskap/hva-er-kontonummer "Hva er Kontonummer? Struktur og Kontrollsiffer i Norge") og [Hva er Organisasjonsnummer?](/blogs/regnskap/hva-er-organisasjonsnummer "Hva er Organisasjonsnummer? Unike IDer for Norske Selskaper") brukes **modulus 11** (der 11 er et **primtall**) for Ã¥ sikre gyldighet og unngÃ¥ tastefeil.

### ModulÃ¦r aritmetikk med primtall

1. Velg et **primtall** *p* som modul, ofte 11.
2. Multipliser hver sifferplass med en vektfaktor og summer resultatet.
3. Del summen med *p* (modulus *p*) og bruk resten til Ã¥ beregne kontrollsiffer.

Denne teknikken reduserer risiko for manuelle feil og automatiserer validering i [banktransaksjoner](/blogs/regnskap/hva-er-banktransaksjoner "Hva er Banktransaksjoner? Komplett Guide til Bankoperasjoner og RegnskapsfÃ¸ring") og [Elektronisk Fakturering](/blogs/regnskap/hva-er-elektronisk-fakturering "Hva er Elektronisk Fakturering? Komplett Guide til Digitale FakturalÃ¸sninger").

## Relaterte emner

* [ModulÃ¦r aritmetikk](/blogs/regnskap/hva-er-matematikk "ModulÃ¦r Aritmetikk “ Oversikt over aritmetiske operasjoner i regnskap")
* [Hva er Kontonummer?](/blogs/regnskap/hva-er-kontonummer "Hva er Kontonummer? Struktur og Kontrollsiffer i Norge")
* [Hva er Organisasjonsnummer?](/blogs/regnskap/hva-er-organisasjonsnummer "Hva er Organisasjonsnummer? Unike IDer for Norske Selskaper")


