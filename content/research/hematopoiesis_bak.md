+++
widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = false  # Activate this widget? true/false
weight = 20  # Order that this section will appear.

title = ""
subtitle = ""

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "1"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"

  # Background gradient.
  # gradient_start = "DeepSkyBlue"
  # gradient_end = "SkyBlue"

  # Background image.
  # image = "headers/bubbles-wide.jpg"  # Name of image in `static/img/`.
  # image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.

  # Text color (true=light or false=dark).
  text_color_light = false

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["50px", "0", "50px", "0"]

[advanced]
 # Custom CSS.
 css_style = ""

 # CSS class.
 css_class = ""
+++

## Hematopoiesis and Leukemogenesis
#### Using bone marrow derived stem and progenitor cells to understand blood development and cancer

Most projects in the Krause lab focus on molecular mechanisms that regulate early hematopoiesis and may contribute to leukemogenesis when regulation fails. Specifically, we use primary cells as well as murine and human embryonic stem cells to study RBM15 and MKL1, two genes that are fused in the t(1;22) translocation associated with Acute Megakaryoblastic Leukemia AMKL). We are studying the roles of RBM15 and MKL1 in normal hematopoiesis and leukemogenesis.

{{< figure class="img-md" src="/img/research/hematopoeisis_research.jpg#center" title="**In vitro differentiation**" caption="*Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.*">}}

We have shown that RBM15 is downregulated as blood stem cells differentiate such that megakaryoblasts express low levels of RBM15. When RBM15 is overexpressed, it prevents myeloid differentiation, and when RBM15 is inhibited or deleted, myeloid differentiation is enhanced, and there is a loss of hematopoietic stem and progenitor cells. RBM15 is a member of the spen family of proteins that share a C-terminal SPOC domain that bind to the nuclear corepressor complex. We have shown that RBM15 represses Notch induced Hes1 promoter activity.  Also, RBM15, which is an RNA binding protein, plays a role in post-transcriptional changes to RNA icnluding splicing and methylation. Thus, RBM15 plays a role in hematopoiesis by maintaining myeloid cells in an undifferentiated state, and this activity is potentially mediated by regulation of Notch signaling and/or RNA processing.

MKL1, also part of the t(1;22) translocation specific to acute megakaryoblastic leukemia, is  activates the transcription factor serum response factor (SRF). The Krause laboratory has shown that MKL1 expression is upregulated during megakaryocytic differentiation, and that overexpression of MKL1 enhances megakaryocytic differentiation.  The effect of MKL1 is abrogated when SRF is knocked down, suggesting that MKL1 acts through SRF. Knock out of MKL1 in mice leads to reduced platelet counts, and reduced ploidy in bone marrow megakaryocytes. Thus, MKL1 promotes physiological maturation of human and murine megakaryocytes.

Ongoing work on RBM15 is focused on the mechanisms by which it affects notch signaling, its RNA binding properties, ands its ability to bind to other nuclear proteins to affect transcription. Ongoing work on MKL1 is focused on the mechanisms by which MKL1 promotes megakaryocytopoiesis.

#### Timelapse imaging of single cells undergoing their fate commitment decisions

Elucidating the mechanisms underlying hematopoietic cell fate decision is critical to our understanding of normal hematopoiesis and both benign and malignant disease of the blood forming system. To better understand key cellular processes that govern lineage commitment, we developed a time-lapse imaging approach in conjunction with lineage tracing to measure quantifiable features of single bipotent Megakaryocytic-Erythroid Progenitors (MEP) as they commit to either lineage.

<div class="container" style="width: 470px; margin-top: 25px; margin-bottom: 25px;">
<video controls autoplay loop>
  <source src="/img/research/s9_MEP.webm" type="video/webm">
</video>
</div>

Above, cells are cultured in a 15μL droplet of semisolid collagen containing medium supplemented with cytokines (EPO, IL-3, IL-6, SCF, TPO), which is sandwiched under a 15mm round coverslip to minimize focal depth. Cells are imaged using DIC (differential interference contrast) every 2 hours for the first 36 hours, and then every 10 minutes for an additional 3.5 days. On day 7, fluorescent anti-CD41 (green) and anti-GlyA (red)  are added to the dish, and imaging continued every 10 minutes in the DIC, FITC, and Cy5 channels for an additional 24 hours.
