+++
# A Projects section created with the Portfolio widget.
widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = false  # Activate this widget? true/false
weight = 20  # Order that this section will appear.

title = "Our mission"
subtitle = ""
+++
**The goal of the Krause Laboratory** is to understand the molecular mechanisms that define hematopoiesis and leukemogenesis. Situated in the Yale Stem Cell Center at the Yale School of Medicine, we develop cellular models of hematopoiesis using bone marrow derived stem and progenitor cells. With Diane serving as Medical Director of the Advanced Cell Therapy Laboratory, the lab is uniquely situated to translate insights from basic research into improved strategies for bone marrow and stem cell transplantation and novel treatments for leukemia and lymphoma.  
<br>

<iframe src="https://player.vimeo.com/video/76979871" width="640" height="360" frameborder="0" allowfullscreen allow="autoplay; encrypted-media"></iframe>


*Diane discusses how the Krause Lab leverages the interface of fundamental science and clinical medicine at Yale to understand stem cell biology and improve patients' lives.*


<svg class="defs">
  <defs>
    <path id="pause-button-shape"  d="M24,0C10.745,0,0,10.745,0,24s10.745,24,24,24s24-10.745,24-24S37.255,0,24,0z M21,33.064c0,2.201-1.688,4-3.75,4
    s-3.75-1.799-3.75-4V14.934c0-2.199,1.688-4,3.75-4s3.75,1.801,3.75,4V33.064z M34.5,33.064c0,2.201-1.688,4-3.75,4
    s-3.75-1.799-3.75-4V14.934c0-2.199,1.688-4,3.75-4s3.75,1.801,3.75,4V33.064z"/>
    <path id="play-button-shape"  d="M24,0C10.745,0,0,10.745,0,24s10.745,24,24,24s24-10.745,24-24S37.255,0,24,0z M31.672,26.828l-9.344,9.344
    C20.771,37.729,19.5,37.2,19.5,35V13c0-2.2,1.271-2.729,2.828-1.172l9.344,9.344C33.229,22.729,33.229,25.271,31.672,26.828z"/>
  </defs>
</svg>

<div class="buttons">
  <!-- if we needed to change height/width we could use viewBox here -->
  <svg class="button" id="play-button">
    <use xlink:href="#play-button-shape">
  </svg>
  <svg class="button" id="pause-button">
    <use xlink:href="#pause-button-shape">
  </svg>
</div>

<script src="https://player.vimeo.com/api/player.js"></script>
<script>
    var iframe = document.querySelector('iframe');
    var player = new Vimeo.Player(iframe);

    player.on('play', function() {
        console.log('played the video!');
    });

    player.getVideoTitle().then(function(title) {
        console.log('title:', title);
    });

    // bind events
    var playButton = document.getElementById("play-button");
    playButton.addEventListener("click", function() {
      console.log('play was clicked!');
    player.play();
    });

    var pauseButton = document.getElementById("pause-button");
    pauseButton.addEventListener("click", function() {
    player.pause();
    });
</script>
