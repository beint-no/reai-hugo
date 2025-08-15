---
title: "8320-utsatt-skatt"
slug: 8320-utsatt-skatt
type: "blog"
layout: "pages/single"
---

**Konto 8320 - Utsatt skatt** er en konto i Norsk Standard Kontoplan som brukes til å vise **utsatt skatt** som skattekostnad i [resultatregnskapet](/blogs/regnskap/hva-er-resultatregnskap "Hva er Resultatregnskap? Oppbygning og Analyse").

![Illustrasjon av konto 8320 utsatt skatt](8320-utsatt-skatt-image.svg)

## Når bruker man konto 8320?

**Konto 8320** benyttes når du skal periodisere skattekostnad knyttet til midlertidige forskjeller mellom regnskapsmessige og skattemessige verdier, slik at kostnaden matches med grunnlaget for skatten i resultatregnskapet. Vanlige situasjoner inkluderer:

* Endringer i avskrivningsgrunnlag som fører til forskjeller mellom regnskapsmessige og skattemessige avskrivninger.
* Nedskrivninger eller reverseringer av eiendeler som påvirker skattegrunnlaget.
* Andre midlertidige forskjeller som vil reversere i fremtidige perioder.

## Forskjell mellom 8320 og tilgrensede kontoer

| Konto  | Formål                                                         | Regnskapspresentasjon                     |
|--------|----------------------------------------------------------------|--------------------------------------------|
| 8320   | Utsatt skatt (skattekostnad)                                   | Resultatregnskap                           |
| 2120   | Utsatt skatt (forpliktelse)                                    | Balansen (kort/langsiktig gjeld)           |
| 1070   | Utsatt skattfordel                                             | Balansen (omløps-/anleggsmidler)           |
| 8300   | Betalbar skatt                                                 | Balansen (kortsiktig gjeld)                |
| 2500   | Betalbar skatt, ikke utlignet                                  | Balansen (kortsiktig gjeld)                |
| 2510   | Betalbar skatt, utlignet                                       | Balansen (kortsiktig gjeld)                |
| 2530   | Refusjon skatt etter Skatteloven § 31 femte ledd               | Balansen (kortsiktig fordring)             |

## Regnskapsføring av utsatt skatt

### Førstegangsregistrering av skattekostnad

```plaintext
Debet: Konto 8320 - Utsatt skatt                     XXX NOK
Kredit: Konto 2120 - Utsatt skatt                    XXX NOK
```

### Reversering av utsatt skatt i senere perioder

```plaintext
Debet: Konto 2120 - Utsatt skatt                    YYY NOK
Kredit: Konto 8320 - Utsatt skatt                    YYY NOK
```

## Beregning av utsatt skatt

**Endring i utsatt skatt = Endring i midlertidige forskjeller × Skattesats**

| Post                                        | Endring i midlertidig forskjell | Skattesats | Endring utsatt skatt |
|---------------------------------------------|---------------------------------:|-----------:|----------------------:|
| Forskjell ved avskrivningsgrunnlag          |                        500 000  | 22 %       |              110 000  |
| Forskjell ved nedskrivning av eiendel       |                        200 000  | 22 %       |               44 000  |
| **Total**                                   |                                  |            |             **154 000** |

## Presentasjon i regnskapet

Skattekostnaden som er periodisert i **Konto 8320 - Utsatt skatt** inngår i [resultatregnskapet](/blogs/regnskap/hva-er-resultatregnskap "Hva er Resultatregnskap? Oppbygning og Analyse") for perioden.

## Se også

* [Konto 8300 - Betalbar skatt](/blogs/kontoplan/8300-betalbar-skatt "Konto 8300 - Betalbar skatt")
* [Konto 2120 - Utsatt skatt](/blogs/kontoplan/2120-utsatt-skatt "Konto 2120 - Utsatt skatt")
* [Konto 1070 - Utsatt skattfordel](/blogs/kontoplan/1070-utsatt-skattfordel "Konto 1070 - Utsatt skattfordel")
* [Konto 2500 - Betalbar skatt, ikke utlignet](/blogs/kontoplan/2500-betalbar-skatt-ikke-utlignet "Konto 2500 - Betalbar skatt, ikke utlignet")
* [Konto 2510 - Betalbar skatt, utlignet](/blogs/kontoplan/2510-betalbar-skatt-utlignet "Konto 2510 - Betalbar skatt, utlignet")
* [Konto 2530 - Refusjon skatt etter Skatteloven §31 5. ledd](/blogs/kontoplan/2530-refusjon-skatt-etter-skatteloven-31-5-ledd "Konto 2530 - Refusjon skatt etter Skatteloven §31 5. ledd")
* [Resultatregnskap](/blogs/regnskap/hva-er-resultatregnskap "Hva er Resultatregnskap? Oppbygning og Analyse")
