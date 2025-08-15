---
title: "Hva er FIFO-metoden?"
summary: |
  FIFO-metoden (First In, First Out) er en lagerverdivurderingsmetode som antar at eldste varer selges først, avgjørende for korrekt regnskapsføring og skattemessig behandling i Norge.
description: |
  Detaljert guide til FIFO-metoden i regnskap: definisjon, beregning, bokføring, fordeler, ulemper, skattemessige forhold og internkontroll.
slug: fifo-metoden
featured_image: fifo-metoden-image.svg
featured_image_alt: "Illustrasjon av FIFO-metoden"
url: "/blogs/regnskap/fifo-metoden/"
draft: false
---

**FIFO-metoden (First In, First Out)** er en **lagerverdivurderingsmetode** som antar at de eldste varene i lageret selges først. Metoden er sentral for å sikre korrekt [bokføring](/blogs/regnskap/hva-er-bokforing "Hva er Bokføring?") og optimal skatteberegning av [varelager](/blogs/regnskap/hva-er-varelager "Hva er Varelager?").

![FIFO-metoden Oversikt](fifo-metoden-image.svg)

## Hva er FIFO-metoden?

FIFO-metoden fordeler varenes anskaffelseskost basert på kronologisk rekkefølge. Når varer selges, tas kostprisene fra de eldste varelagerpostene først, slik at lagerverdien reflekterer de nyeste prisene.

## Praktisk beregning av FIFO

Eksempel på varelagerbevegelser og FIFO-beregning:

| **Dato**  | **Transaksjon**     | **Antall** | **Enhetspris** | **Kostpris solgt** | **Gjenværende lager** |
|-----------|---------------------|-----------:|---------------:|-------------------:|----------------------:|
| 01.01     | Åpningslager        |      200 stk |        100 kr |                    | 200 stk à 100 kr     |
| 15.01     | Innkjøp              |      300 stk |        110 kr |                    | +300 stk à 110 kr    |
| 30.01     | Innkjøp              |      250 stk |        120 kr |                    | +250 stk à 120 kr    |
| 10.02     | Salg (400 stk)      |               |               | 200×100 + 200×110  | 100 stk à 110 kr<br>250 stk à 120 kr |

## Regnskapsføring av FIFO

Ved salg bokføres både salgsinntekt og kostpris for solgte varer:

```plaintext
Debet: Kundefordringer/Bank
Kredit: Salgsinntekter

Debet: Kostpris solgte varer
Kredit: Varelager
```

Se også [Aktivering og kostnadsføring](/blogs/regnskap/hva-er-aktivering "Hva er Aktivering?") for detaljer om balanseføring.

## Fordeler og ulemper med FIFO

**Fordeler:**

* Reflekterer naturlig vareflyt
* Enkel å forstå og implementere
* Høyere rapportert lagerverdi ved prisstigning
* Reduserer risiko for foreldelse

**Ulemper:**

* Kan gi lavere kostnad for solgte varer ved prisfall
* Høyere skattebelastning i inflasjonsperioder
* Krever nøyaktig oppfølging ved mange små leveranser

| **Fordeler**                           | **Ulemper**                                       |
|----------------------------------------|---------------------------------------------------|
| Naturlig vareflyt                      | Høyere kostpris ved prisstigning                  |
| Konsistent regnskapsføring             | Høyere skatt ved inflasjon                        |
| Lett å forstå for regnskapsbrukere     | Administrativt merarbeid ved hyppige leveranser   |

## Skattemessige forhold

I Norge er **FIFO-metoden** skattemessig tillatt og følger prinsippet om laveste verdi av anskaffelseskost eller netto realisasjonsverdi. Riktig verdivurdering påvirker både beregning av skattepliktig overskudd og balanse.

## Internkontroll og digitalisering

Effektiv internkontroll av FIFO-bokføring sikres ved:

* Systematisk dokumentasjon av varemottak og uttak
* Periodiske [avstemminger](/blogs/regnskap/hva-er-avstemming "Hva er Avstemming?")
* Bruk av [ERP-systemer](/blogs/regnskap/hva-er-erp-system "Hva er ERP-system?") for sanntids lagerstyring

## Videre lesning

For en mer omfattende gjennomgang av metode og praktisk implementering, se artikkelen [FIFO-metoden](/blogs/regnskap/fifo-metoden "FIFO-metoden").

For å forstå vareflyten i sammenheng med hele **varekretsløpet**, se også artikkelen [Varekretsløpet](/blogs/regnskap/varekretslopet "Varekretsløpet: Flyt av varer og kapital").
