---
title: "Hva er SAF-T?"
meta_title: "Hva er SAF-T?"
meta_description: 'SAF-T (Standard Audit File for Tax) er en global standard for digital rapportering av regnskapsdata til skattemyndigheter. I Norge er **SAF-T** vedtatt som del ...'
slug: saf-t
type: blog
layout: pages/single
---

SAF-T (Standard Audit File for Tax) er en global standard for digital rapportering av regnskapsdata til skattemyndigheter. I Norge er **SAF-T** vedtatt som del av [bokfÃ¸ringsloven](/blogs/regnskap/hva-er-bokforingsloven "Hva er BokfÃ¸ringsloven? Krav, Regler og Praktisk Veiledning") og krever at virksomheter kan eksportere regnskapsdata i et strukturert XML-format.

SAF-T gjÃ¸r det enklere for Skatteetaten Ã¥ gjennomfÃ¸re effektivt [bokettersyn](/blogs/regnskap/bokettersyn "Bokettersyn - Komplett Guide til Regnskapskontroll") og intern revisjon ved Ã¥ standardisere datautveksling og sikre **kompletthet**, **sporing** og **sporbarhet** av regnskapsinformasjon.

## Hvorfor SAF-T?

Ved Ã¥ bruke **SAF-T** kan virksomheter:

* Automatisere eksport av regnskapsdata fra [ERP-systemer](/blogs/regnskap/erp-system "Hva er ERP-system? Komplett Guide til ERP i Regnskap") og regnskapsprogrammer.
* Redusere tidsbruk og manuelle feil ved forberedelse av dokumentasjon til skattemyndigheter.
* Sikre enhetlig format og struktur uavhengig av teknologileverandÃ¸r.

## Hovedkomponenter i SAF-T-filen

Tabellen nedenfor gir en oversikt over de viktigste delene av en SAF-T-fil:

| **Element**            | **Beskrivelse**                                                      |
|------------------------|----------------------------------------------------------------------|
| **Header**             | Metadata om eksport, virksomhet, periode og versjon av SAF-T-schema. |
| **Master Files**       | Grunnleggende registre som kontoplan, kunder, leverandÃ¸rer og varer. |
| **Journal Entries**    | Bilagslinjer med transaksjoner, dato, belÃ¸p og referanser.           |
| **Balances**           | Periodisert saldooversikt per konto i regnskapet.                    |
| **Tax Details**        | Spesifikk informasjon om merverdiavgift og skatter.                  |

![SAF-T filstruktur](saf-t-structure.svg)

## Implementering i Norge

I Norge har Skatteetaten definert en norsk tilpasning av SAF-T i henhold til internasjonalt XML-schema. For Ã¥ innfri kravene mÃ¥ regnskapssystemer stÃ¸tte:

1.  Eksport av SAF-T-XML med korrekte feltnavn og strukturer.
2.  Validering mot gjeldende schema-versjon publisert by Skatteetaten.
3.  Dokumentasjon av prosesser og rutiner for generering av SAF-T-data.

For beste praksis ved automatisering av SAF-T-eksport, se vÃ¥r guide til [API-integrasjon og automatisering](/blogs/regnskap/api-integrasjon-automatisering-regnskap "API-integrasjon og Automatisering i Regnskap").

## Fordeler og utfordringer

**Fordeler:**

* Standardisering sikrer konsistent rapportering pÃ¥ tvers av virksomheter.
* Redusert manuelt arbeid og fÃ¦rre formelle avvik.
* Raskere og mer presise analyser av regnskapsdata for skattemyndigheter.

**Utfordringer:**

* Teknisk implementasjon krever tilpasning av regnskapssystem.
* LÃ¸pende vedlikehold ved oppdatering av schema og bokfÃ¸ringsregler.

## Oppsummering

SAF-T representerer en viktig utvikling innen digitalisering av norsk regnskapsrapportering. Ved Ã¥ adoptere SAF-T-standard kan virksomheter oppnÃ¥ bedre internkontroll, mer effektive bokettersyn og sikre etterlevelse av [bokfÃ¸ringsloven](/blogs/regnskap/hva-er-bokforingsloven "Hva er BokfÃ¸ringsloven? Krav, Regler og Praktisk Veiledning").





