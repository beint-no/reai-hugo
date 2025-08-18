---
title: "Hva er ELMA?"
meta_title: "Hva er ELMA?"
meta_description: '**ELMA** (Elektronisk mottaker- og avsenderregister) er Norges sentrale **digital adresse**-register for mottakere og avsendere av elektroniske meldinger, inklu...'
slug: elma
type: blog
layout: pages/single
---

**ELMA** (Elektronisk mottaker- og avsenderregister) er Norges sentrale **digital adresse**-register for mottakere og avsendere av elektroniske meldinger, inkludert [EHF](/blogs/regnskap/hva-er-ehf "Hva er EHF? En Guide til Norsk Elektronisk Handelsformat"), [eFaktura](/blogs/regnskap/hva-er-efaktura "Hva er eFaktura? Komplett Guide til Elektronisk Fakturering i Norge") og annen digital post. Registeret driftes av [BrÃ¸nnÃ¸ysundregistrene](/blogs/regnskap/bronnoysundregistrene "Hva er BrÃ¸nnÃ¸ysundregistrene? En Guide til Norges Registerforvalter") og er en kritisk komponent i Norges infrastruktur for digital meldingsutveksling.

*Se ogsÃ¥: [Integrasjon](/blogs/regnskap/integrasjon "Integrasjon “ En InnfÃ¸ring i Integrasjonskonsepter i Regnskap").*

![ELMA Oversikt](elma-image.svg)

## Seksjon 1: Hva er ELMA?

ELMA er et offisielt **register** hvor virksomheter registrerer sine digitale adresser for Ã¥ kunne motta og sende strukturerte meldinger elektronisk. MÃ¥let er Ã¥ sikre at meldinger alltid nÃ¥r riktig mottaker, redusere feil ved manuelle adresseoppslag og legge til rette for automatiserte arbeidsflyter.

| Felt                        | Beskrivelse                                                                                         |
|-----------------------------|-----------------------------------------------------------------------------------------------------|
| **Organisasjonsnavn**       | Navnet pÃ¥ virksomheten registrert i [Enhetsregisteret](/blogs/regnskap/hva-er-enhetsregisteret "Hva er Enhetsregisteret?"). |
| **ServiceAdressetype**      | Type adresse, for eksempel **EHF**, **Peppol** eller **eFaktura**.                                   |
| **Adresse**                 | Den unike digitale adressen (ID) som brukes ved sending av meldinger.                                |
| **Kontaktpunkt**            | Teknisk endepunkt for kommunikasjon, ofte en URL eller URI for API-tilgang.                          |

## Seksjon 2: Hvorfor bruke ELMA?

Ã… integrere med ELMA gir flere fordeler:

* **Standardisert data**: SÃ¸rger for at alle parter benytter samme adresseinformasjon.
* **Automatisering**: GjÃ¸r det mulig Ã¥ slÃ¥ opp mottakeres adresser programmatisk via API.
* **Redusert risiko**: Minimerer feil ved manuelle adresseoppslag.
* **Offentlig krav**: Mange offentlige tjenester krever at adressene er registrert i ELMA.

## Seksjon 3: Registreringsprosess

For Ã¥ ta i bruk ELMA mÃ¥ virksomheter registrere seg og legge inn adresseinformasjon:

![ELMA Registreringsprosess](elma-prosess.svg)

## Seksjon 4: API-integrasjon

ELMA tilbyr et REST-basert API slik at systemer kan slÃ¥ opp og oppdatere adresser automatisk:

![ELMA API-integrasjon](elma-api-integrasjon.svg)

En typisk integrasjon involverer fÃ¸lgende steg:

1. Autentisering mot ELMA API med sertifikat eller OAuth.
2. Hent mottakerens digitale adresse ved Ã¥ sende organisasjonsnummer.
3. Bruk adressen for Ã¥ sende fakturaer, meldinger eller annen kommunikasjon.

## Seksjon 5: Sammenheng med Ã¸vrige digitale tjenester

ELMA er tett integrert med flere sentrale digitale lÃ¸sninger i norsk regnskap:

| Tjeneste              | Bruk av ELMA                                                                                                         |
|-----------------------|----------------------------------------------------------------------------------------------------------------------|
| **eFaktura**          | SlÃ¥r opp mottakerens fakturaadresse i ELMA fÃ¸r sending av eFaktura.                                                   |
| **EHF**               | Henter EHF-adresse fra ELMA for Ã¥ sikre korrekt levering av elektronisk handelsformat.                                |
| **Altinn**            | Kombineres med ELMA for digital adressering av rapporteringsmeldinger og skjemaer.                                     |

Ved Ã¥ forstÃ¥ og benytte ELMA sikrer virksomheter en **pÃ¥litelig**, **effektiv** og **feilfri** digital meldingsflyt.

## Videre lesning

* [Hva er Altinn?](/blogs/regnskap/hva-er-altinn "Hva er Altinn? Norges Digitale Portal for NÃ¦ringsliv og Privatpersoner")
* [Hva er elektronisk fakturering?](/blogs/regnskap/hva-er-elektronisk-fakturering "Hva er Elektronisk Fakturering? Komplett Guide til Digitale FakturalÃ¸sninger")
* [Hva er eFaktura?](/blogs/regnskap/hva-er-efaktura "Hva er eFaktura? Komplett Guide til Elektronisk Fakturering i Norge")
* [Hva er EHF?](/blogs/regnskap/hva-er-ehf "Hva er EHF? En Guide til Norsk Elektronisk Handelsformat")
* [Hva er BrÃ¸nnÃ¸ysundregistrene?](/blogs/regnskap/bronnoysundregistrene "Hva er BrÃ¸nnÃ¸ysundregistrene? En Guide til Norges Registerforvalter")



