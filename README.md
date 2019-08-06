# How to update the website

This website is distributed over two GitHub repositories. The first is called `academic-kickstart`. This is the repository that you're looking at now. `academic-kickstart` hosts all of the *content* that's used to generate the website. This content is turned into the *site pages* that are displayed when you visit `krauselab.net` by `hugo`, a static site generator. These site pages are stored in a separate repository called `krauselab_website`.

This is a little complicated, but to make things as easy as possible, we're going to 1) download the `academic-kickstart` repository, 2) initialize the academic theme, and `krauselab_website` repository as a *submodule* within `academic-kickstart`.

With that done, all we need to do to edit the website is edit files in the `content/` directory and run the `deploy.sh` script!

## Prerequisites:
1. Install homebrew (go to brew.sh)
2. Install hugo (gohugo.io)
3. Install atom (atom.io)

## Download repository  
1. Pick a folder to download the website repository into. I like to use `$HOME/projects/website`.
2. Open the terminal, and change directory into the folder you want to use
```
$ cd $HOME/Desktop/All\ Diane\'s\ Stuff/
```

3. Clone the repository (this makes a copy of the repository on your computer)
```
$ git clone --branch krauselab https://github.com/dburkhardt/academic-kickstart.git
```

4. Change directory into the folder you just downloaded.
```
$ cd academic-kickstart
```

5. Initialize the theme (this downloads all of the files needed to make the website)
```
$ bash init_submodules.sh
```

## Editing the website

To edit the website, I recommend using atom. Once it's installed from atom.io, you can open a whole directory and easily edit multiple files.

If you want to see what edits to the website will look like after you've made your changes, you can use `hugo server` to render the website locally (i.e. on your computer) and see what it will look like when you deploy to GitHub.

To start the `hugo server`, do the following

1. Open the terminal and change directory into the website directory.

```
$ cd $HOME/Desktop/All\ Diane\'s\ Stuff/academic-kickstart
```

2. Start the server

```
$ hugo server
```

3. Open a web browser and navigate to the following address:

```
localhost:1313
```

FYI - this address is only visible on your computer when you are running `hugo server`. If you close hugo server, the address will not work.

4. Edit the website using atom and check your changes on the web browser. Whenever you save a file, `hugo server` will know and refresh the website for you.

5. When you are done, you can push your changes to the public version of the website using the include `deploy.sh` script.

In terminal, run the following commands:

```
$ cd $HOME/projects/website/academic-kickstart
$ bash deploy.sh
```

You're done! You can see changes reflected on the public website within one minute.

### How to add images to the activities slider

Prerequisites: Images for the slider must be cropped to a 5x7 (landscape) aspect ratio. You can do this in Apple Photos by importing the photo, double clicking the thumbnail, and hitting the "Edit" button in the top right corner. From here you will find a crop tool that will let you specify a set aspect ratio of 5x7. Crop the image and then save the cropped image into the folder at `/static/img/activities/`.

The activities images are listed in a markdown file: `/content/people/slider.md`. Starting on line 18 of that file, you will see the following text:
```toml
# Slides.
# Duplicate an `[[item]]` block to add more slides.
[[item]]
  title = "Summer Picnic at the Yale Outdoor Center"
  img = "/img/activities/lab_picnic.jpg"  # Image path relative to your `static/img/` folder.

[[item]]
  title = "Diane and Tianyi go kayaking"
  img = "/img/activities/kayaking.jpg"
```

To add a new photo, duplicate the `[[item]]` block into the position that you want it to appear in the slider. The `title` text will appear as the caption. Note that the `img` attribute does not need the path to begin with `/static`.

### How to add news sections

If you open the `content/news/` directory, you will find the following structure:
```
content/news/
├── _index.md
├── growing-a-cure
│   ├── featured.jpg
│   └── index.md
├── megakaryocytes-get-so-big
│   ├── featured.jpg
│   └── index.md
...
└── science-march
    ├── featured.jpg
    └── index.md
```

As you might guess, each news article is actually a directory with two files in it: `featured.jpg` and `index.md`.

The first thing you should do to create a new story is create a new directory with a 2-4 word name separated by dashes like `science-march`. This name will become the URL of the article, such as `https://krauselab.net/news/science-march/`.

In this directory, you should add your `featured.jpg` image. The `featured.jpg` image is the thumbnail that is displayed on the front page and the larger image on the article page for new stories that are not hosted externally (more on that later). `featured.jpg` does not need to be cropped, unless you are unsatisfied with the way the image is displayed. This image can be either a JPEG or PNG image, but I recommend JPEG because the files are generally smaller.

The bulk of the news article details go in the `index.md` file. The first decision you need to make is if you'd like the article to be hosted on the website or if you'd simply like to provide a link to an external news source.

The content of an externally-hosted article's `index.md` file looks like this:

```yaml
---
title: "3,000 March for Science in New Haven"
date: "2017-04-24"
link: "https://medicine.yale.edu/news/article.aspx?id=14882"

summary: "Gay Hyre of West Haven was among about 3,000 people who braved intermittent rain and chilly temperatures to join in the March for Science New Haven on April 22. The event was one of hundreds of marches worldwide on the 47th anniversary of Earth Day to protest President Donald J. Trump’s proposed cuts to research, public health, and environmental protection and his administration’s disdain for accepted scientific fact on such issues as climate change."
---
```

You can simply copy one of the existing `index.md` files in the `/news` directory and then edit the title, date, link, and summary to your satisfaction. Note, the date of the article must be in the past, otherwise Hugo won't publish the article.

If you would like the article hosted on your website, you need to add all the text and images you would like in the article below the second set of three dashes. To show you what this looks like, I've added a `new-website` article. You can delete this if you like.

The self-hosted article `index.md` file looks like this:
```
---
title: "The Krause Laboratory has a new website by Experimental Design"
date: "2019-05-22"

# Summary. An optional shortened abstract.
summary: ""
image:
  focal_point: "Center"

---

Experimental Design, run by Daniel Burkhardt of New Haven CT, designed the new website of the Krause Laboratory.

[**Click here to visit Experimental Design.**](https://experimentaldesign.io)
```

The article format using Markdown, a popular markup language. You can learn more about Markdown here: https://guides.github.com/features/mastering-markdown/. Markdown supports all kinds of simple formatting options, like lists, links, bolding, images, etc.

Once you save the `index.md` file, you will be able to see the new article at `localhost:1313/news/article-folder-name` if you have `hugo server` running.

### Adding a lab member

Content for lab members is broken down into two directories.

* `/content/members` contains the content for each lab member and their individual web page
* `/content/people` contains the content for the `krauselab.net/people` page and includes the sliders, job posts, people-cards, etc.

Similar to the articles, the lab members directory is organized into folders.

```
content/members
├── betty
│   ├── _index.md
│   └── avatar.jpg
├── diane
│   ├── _index.md
│   └── avatar.jpg
...
└── yi-chien
    ├── _index.md
    └── avatar.jpg
```

The first thing to do to add a new lab member is to create a directory in `/content/members`.

Next, you need to prepare the `avatar.jpg` image that will be used to generate the cards seen on `krauselab.net/people`. As such, `avatar.jpg` must be cropped to 2x3 (portrait) aspect ratio prior to uploading. You can do this in Apple Photos by importing the photo, double clicking the thumbnail, and hitting the "Edit" button in the top right corner. From here you will find a crop tool that will let you specify a set aspect ratio of 2x3. Crop the image and then save the cropped image into the folder at `/static/img/people/`.

Finally, you need to prepare the `_index.md` file. The leading underscore is important here. For most lab members, the `_index.md` file looks like this:

```
---
# Display name
name: Betty R. Lawton, PhD

# Role/position
role: "Postdoctoral Associate"

# Enter email
email: "betty.lawton@yale.edu"

---

Dr. Betty R. Lawton is a senior member of the Krause laboratory with expertise in pluripotent stem cell culture and differentiation, as well as cell and molecular biology. The predominant interest that has driven the direction of her scientific career is the regulation of gene expression. She came to the Krause laboratory from the University of Connecticut. Her graduate (Genetics, PhD) studies were focused on examining the regulation of gene expression at the Igf2/H19 locus in marsupials and live-bearing fishes. This region is genomically imprinted in mammals and critically important for normal development. The emergence of the Connecticut Stem Cell Initiative provided an opportunity to combine her scientific interests with the needs of patients for medical alternatives to incurable conditions. She was amongst the first group of trainees at UCONN in hESC when the initiative started. She performed post-doctoral studies focused differentiation of human embryonic stem cell to skeletal muscle. In addition to performing many aspects of laboratory management, Dr. Lawton performs multiple studies focused on parathyroid cell differentiation and function.
```

You can edit the information here, and it will be reflected in the people cards and on the individual's web page. You might notice that the `_index.md` file for Diane has more fields and provides a more extensive personal web page. Content from this page can be copied into other user's `_index.md` files if desired.

Note, the "role" position must be one of the following:
"Principal Investigator", "Associate Research Scientist", "Postdoctoral Associate", "Graduate Student", "Senior Administrative Assistant". If you add a new user and don't see them on `krauselab.net/people`, then it's likely that there is a typo in their role.

### Adding a protocol

Lab protocols are actually news articles in disguise. To add a protocol, follow the instructions for adding a news article, but put the folder in `/content/lab-protocols`. Similarly to the lab member content, there is a second directory called `/content/protocols` but this simply provides a layout for the protocols and typically doesn't need to be edited.
