---
title: Preparing Y-Chromosome Probe
summary:
tags:
- Y-chromosome
date: "2019-05-02T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption:
  focal_point: Smart

links:
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

## Generate Y chromosome template DNA  

If you are starting with an aliquot of 2-4 µl template DNA, amplify the DNA several (2-3)
times by DOP-PCR to generate Y chromosome template. This will be your Y chromosome
template stock. Then each time you make probe use DNA from this stock for another batch
(8 reaction) DOP-PCR and subsequent labeling. Do not repeatedly amplify DOP-PCR as this
can bias the oligos generated by selecting for a subpopulation of oligos that amplify
particularly well.

We usually generate Y probe in bulk by making a master mix for 10 PCR reactions.
We then make 8 DOP-PCR reactions, have one no DNA control and 1 excess reaction
for pipetting error. This bulk reaction gives us 1.6 mls of Y probe, roughly enough
to stain 160 slides.

## DOP-PCR
#### (degenerate oligonucleo primed-polymerase chain reaction)
PCR reaction, 50 µl total volume

| Reagent                | 1 reaction | 10 reactions |
| :--                    |   :----    | :----        |
| Water                  | 40.3 µL    | 403 µL       |
| 10x PCR buffer         | 5 µL       | 50 µL        |
| 10 mM dNTP             | 1.2 µL     | 12 µL        |
| 100 µM 6AI primer      | 1 µL       | 10 µL        |
| Taq stock 5U/ µl       | 0.5 µL     | 5 µL         |
| *(Roche cat# 1435094)* |            |              |

Take out 48 µl for no DNA control, place in a labeled 0.2ml tube.

Add DNA


| Reagent                | 1 reaction | 9 reactions |
| :--                    |   :----    | :----       |
| Mouse Y chromosome DNA | 2 µL       | 18 µL       |

Pipette 50 µl into 8 tubes

**6AI Primer** = CCG ACT CGA GNN NNN NTA CAC C
where N is an equal concentration of all nucleotides


| PCR cycle  | Denaturing | Annealing  | Extension  |
|------------|------------|------------|------------|
| 1-2 cycles | 45sec/94°C | 45sec/15°C | 12min/37°C |
| 5 cycles   | 40sec/94°C | 45sec/37°C | 4min/66°C  |
| 24 cycles  | 40sec/94°C | 45sec/54°C | 4min/66°C  |

<br>

For bulk DOP-PCR, pipet all the reactions together after cycling. Then run 5 µl pooled
DOP-PCR reaction and 5 µl no-DNA control on a 2% agarose gel alongside a 100 bp marker.
The DOP-PCR reaction produces a smear that runs from approximately 300 to 2.5 kb.
Next ethanol precipitate the pooled DOP-PCR DNA overnight by adding 1/10 the volume of
3M NaOAc, vortexing and then adding 2.5x the volume 100% ethanol and leaving at -20°C ON.
The next day centrifuge the solution at 14,000 rpm for 30 min to pellet the DNA. Next wash
the pellet in 70% ethanol and air-dry. Resuspend the pellet in the starting volume of distilled water (50 µl per PCR reaction, 400 µl for 8 reactions pooled).

##  Making the Y probe

####  DIG-Nick Translation

The next step involves digesting the Y chromosome template DNA (DOP-PCR reaction)
into smaller pieces and labeling these pieces with digoxigenin. This is done using the DIG-Nick translation kit (ROCHE cat# 1745876). Take out 5-20 µl of newly resuspended DOP-PCR
and set aside.

| Reagent                         | 1 reaction    | 8 reactions    |
| :--                             |   :----       | :----          |
| Y Chromosome Template (DOP-PCR) | approx. 50 µl | approx. 400 µl |
| DIG-Nick Kit mix                | 12.5 µl       | 100 µl         |


This is now your DIG-Nick reaction solution. Incubate at 15 °C for 90 min to 2 hrs. Put the
reaction on ice and run the reaction on a 2% agarose gel alongside the 5 µl of DOP-PCR
you set aside earlier and some 100bp marker. You expect to see smear of fragments ranging
from 150-500 bp. If this is the case, stop the reaction. If the smear still contains larger sized fragments, return the reaction to 15°C and check again on a 2% agarose gel every 10-20 min until the reaction contains the appropriate fragment sizes.

To stop the reaction:

| Reagent           | 1 reaction | 8 reactions |
| :--               |   :----    | :----       |
| DIG-Nick reaction | 62.5 µl    | 500 µl      |
|  	0.5M EDTA       | 4 µl       | 32 µl       |

and incubate at 65°C for 10 min.

####  Ethanol precipitation with carrier and blocker DNA

Aliquot the DIG-Nick reaction by placing 100 µl of it into several 1.5 ml eppendorfs. Scale up or down as necessary.

| Reagent                                                | 1 reaction  |
| :--                                                    |   :----     |
| DIG-Nick reaction                                      | 100 µl      |
|  Sonicated Salmon sperm 10mg/ml (Stratagene cat#21190) | 4 µl        |
| Cot-1 DNA 1mg/ml (Invitrogen cat#18440-016)            | 100 µl      |
| 3 M NaOAC (then vortex)                                | 26 µl       |
|   	100% ethanol                                       | 800 µl      |



Vortex again and leave ON at –20°C. Centrifuge at 14,000 rpm for 30 min to pellet the DNA.
Next wash the pellet in 70% ethanol and air-dry. Resuspend the pellet in 100 µl formamide DI
(deionized). Make sure the pellet is completely resuspended by heating the solution to 42°C
for 10 min or higher if necessary. Then add an equal volume of hybridization buffer and store the probe at -20°C.

#### Hybridization Buffer
For 20 mls:  
8 mls 50% Dextran Sulfate - end conc. 20% Dextran Sulfate  
4 mls 20x SSC - end conc. 4x SSC  
8 mls H2O  
