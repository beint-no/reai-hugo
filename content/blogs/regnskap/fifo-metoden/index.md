---
title: "Hva er FIFO-metoden?"
meta_title: "Hva er FIFO-metoden?"
meta_description: '**FIFO-metoden (First In, First Out)** er en **lagerverdivurderingsmetode** som antar at de eldste varene i lageret selges fÃ¸rst. Metoden er sentral for Ã¥ sik...'
slug: fifo-metoden
type: blog
layout: pages/single
---

**FIFO-metoden (First In, First Out)** er en **lagerverdivurderingsmetode** som antar at de eldste varene i lageret selges fÃ¸rst. Metoden er sentral for Ã¥ sikre korrekt [bokfÃ¸ring](/blogs/regnskap/hva-er-bokforing "Hva er BokfÃ¸ring?") og optimal skatteberegning av [varelager](/blogs/regnskap/hva-er-varelager "Hva er Varelager?").

![FIFO-metoden Oversikt](fifo-metoden-image.svg)

## Hva er FIFO-metoden?

FIFO-metoden fordeler varenes anskaffelseskost basert pÃ¥ kronologisk rekkefÃ¸lge. NÃ¥r varer selges, tas kostprisene fra de eldste varelagerpostene fÃ¸rst, slik at lagerverdien reflekterer de nyeste prisene.

## Praktisk beregning av FIFO

Eksempel pÃ¥ varelagerbevegelser og FIFO-beregning:

| **Dato**  | **Transaksjon**     | **Antall** | **Enhetspris** | **Kostpris solgt** | **GjenvÃ¦rende lager** |
|-----------|---------------------|-----------:|---------------:|-------------------:|----------------------:|
| 01.01     | Ã…pningslager        |      200 stk |        100 kr |                    | 200 stk Ã  100 kr     |
| 15.01     | InnkjÃ¸p              |      300 stk |        110 kr |                    | +300 stk Ã  110 kr    |
| 30.01     | InnkjÃ¸p              |      250 stk |        120 kr |                    | +250 stk Ã  120 kr    |
| 10.02     | Salg (400 stk)      |               |               | 200Ã—100 + 200Ã—110  | 100 stk Ã  110 kr<br>250 stk Ã  120 kr |

## RegnskapsfÃ¸ring av FIFO

Ved salg bokfÃ¸res bÃ¥de salgsinntekt og kostpris for solgte varer:

```plaintext
Debet: Kundefordringer/Bank
Kredit: Salgsinntekter

Debet: Kostpris solgte varer
Kredit: Varelager
```

Se ogsÃ¥ [Aktivering og kostnadsfÃ¸ring](/blogs/regnskap/hva-er-aktivering "Hva er Aktivering?") for detaljer om balansefÃ¸ring.

## Fordeler og ulemper med FIFO

**Fordeler:**

* Reflekterer naturlig vareflyt
* Enkel Ã¥ forstÃ¥ og implementere
* HÃ¸yere rapportert lagerverdi ved prisstigning
* Reduserer risiko for foreldelse

**Ulemper:**

* Kan gi lavere kostnad for solgte varer ved prisfall
* HÃ¸yere skattebelastning i inflasjonsperioder
* Krever nÃ¸yaktig oppfÃ¸lging ved mange smÃ¥ leveranser

| **Fordeler**                           | **Ulemper**                                       |
|----------------------------------------|---------------------------------------------------|
| Naturlig vareflyt                      | HÃ¸yere kostpris ved prisstigning                  |
| Konsistent regnskapsfÃ¸ring             | HÃ¸yere skatt ved inflasjon                        |
| Lett Ã¥ forstÃ¥ for regnskapsbrukere     | Administrativt merarbeid ved hyppige leveranser   |

## Skattemessige forhold

I Norge er **FIFO-metoden** skattemessig tillatt og fÃ¸lger prinsippet om laveste verdi av anskaffelseskost eller netto realisasjonsverdi. Riktig verdivurdering pÃ¥virker bÃ¥de beregning av skattepliktig overskudd og balanse.

## Internkontroll og digitalisering

Effektiv internkontroll av FIFO-bokfÃ¸ring sikres ved:

* Systematisk dokumentasjon av varemottak og uttak
* Periodiske [avstemminger](/blogs/regnskap/hva-er-avstemming "Hva er Avstemming?")
* Bruk av [ERP-systemer](/blogs/regnskap/hva-er-erp-system "Hva er ERP-system?") for sanntids lagerstyring

## Videre lesning

For en mer omfattende gjennomgang av metode og praktisk implementering, se artikkelen [FIFO-metoden](/blogs/regnskap/fifo-metoden "FIFO-metoden").

For Ã¥ forstÃ¥ vareflyten i sammenheng med hele **varekretslÃ¸pet**, se ogsÃ¥ artikkelen [VarekretslÃ¸pet](/blogs/regnskap/varekretslopet "VarekretslÃ¸pet: Flyt av varer og kapital").
