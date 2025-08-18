---
title: "Hva er Internrente?"
meta_title: "Hva er Internrente?"
meta_description: '**Internrente** (IRR, Internal Rate of Return) er den diskonteringsrenten som setter netto nÃ¥verdi (NPV) av en investering til null. Internrenten gir et mÃ¥l p...'
slug: internrente
type: blog
layout: pages/single
---

**Internrente** (IRR, Internal Rate of Return) er den diskonteringsrenten som setter netto nÃ¥verdi (NPV) av en investering til null. Internrenten gir et mÃ¥l pÃ¥ den Ã¥rlige **avkastningen** som et prosjekt eller en investering forventes Ã¥ generere.

![Illustrasjon som viser konseptet internrente](internrente-image.svg)

## Hva er Internrente?

Internrente er den renten, ofte betegnet som _r_, som tilfredsstiller likningen for netto nÃ¥verdi:

```math
0 = \sum_{t=0}^{n} \frac{CF_t}{(1 + r)^t} - I_0
```

Hvor:
* _CF<sub>t</sub>_ = KontantstrÃ¸m i periode _t_
* _r_ = Internrente
* _n_ = Antall perioder
* _I<sub>0</sub>_ = Opprinnelig investering

## Hvorfor bruke Internrente?

Bruk av internrente i investeringsanalyse hjelper med Ã¥:

* Sammenligne ulike prosjekter basert pÃ¥ avkastningskrav
* Vurdere lÃ¸nnsomhet uten Ã¥ mÃ¥tte velge en diskonteringsrente pÃ¥ forhÃ¥nd
* Kommunisere forventet avkastning i prosent

## Eksempel pÃ¥ beregning av Internrente

Anta en opprinnelig investering pÃ¥ 100Â 000 kr som gir fÃ¸lgende kontantstrÃ¸mmer:

| Ã…r | KontantstrÃ¸m |
|----|--------------|
| 0  | -100Â 000 kr  |
| 1  | 30Â 000 kr    |
| 2  | 40Â 000 kr    |
| 3  | 50Â 000 kr    |

Ved Ã¥ lÃ¸se likningen for internrenten (_r_) finner vi:

```text
0 = -100000 + 30000/(1+r) + 40000/(1+r)^2 + 50000/(1+r)^3
```

Resultatet blir omtrent **14,5Â %**.

## Internrente vs. Netto NÃ¥verdi (NPV)

| Aspekt                  | Internrente                      | NPV (Netto NÃ¥verdi)                         |
|-------------------------|----------------------------------|----------------------------------------------|
| MÃ¥leparameter           | Rente (_%_)                      | Verdi (kr)                                   |
| Beslutningsregel        | _r_ > avkastningskrav â†’ Godkjenn | NPV > 0 â†’ Godkjenn                           |
| Forutsetning om reinvestering | Samme rate (_r_)               | Diskonteringsrenten (_r_ eller alternativer) |


## Begrensninger med Internrente

* **Multiple IRR-problemer**: Kan oppstÃ¥ nÃ¥r kontantstrÃ¸mmer skifter fortegn flere ganger
* **Reinvesteringsantagelser**: Antar at mellomliggende kontantstrÃ¸mmer reinvesteres til internrenten
* **Ingen absolutt verdi**: To prosjekter med hÃ¸y IRR kan ha svÃ¦rt forskjellig absolutt NPV

## Internrente i Regnskaps- og Investeringsanalyse

Internrente brukes ofte i kombinert vurdering med NPV under internregnskapsanalyse og budsjettplanlegging. For mer om diskontering og NPV, se [Hva er Diskontering?](/blogs/regnskap/hva-er-diskontering "Hva er Diskontering? En Guide til NÃ¥verdi, NPV og Diskonteringsrente").

For en grundig gjennomgang av avkastningsbegrepet, se ogsÃ¥ [Hva er Avkastning?](/blogs/regnskap/hva-er-avkastning "Hva er Avkastning? Komplett Guide til Investeringsavkastning og Beregning").
