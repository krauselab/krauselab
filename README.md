# How to update the website

This website organized in a GitHub repository at www.github.com/krauselab.   This is the repository that you're looking at now. `www.github.com/krauselab/krauselab` hosts all of the *content* that's used to generate the website. This content is turned into the *site pages* that are displayed when you visit `krauselab.net` by `hugo`, a static site generator. These site pages are _served_ by a free service called [Netlify](www.netlify.com). Whenever you push an update to the `www.github.com/krauselab/krauselab` repository, Netlify will see the change and trigger a rebuild of the website automatically. So long as you can build the website locally (_i.e._ by running `hugo server`, see below). You also have an account at Netlify and if there are issues with updating the website you should check there.

With that done, all we need to do to edit the website is edit files in the `content/` directory and run the `deploy.sh` script!

## Prerequisites:
#### Homebrew

Homebrew is a package manager for Mac OS. You need to install this only so that you can install `hugo`, which is the program that builds the website. If you're using a new computer, you'll need to install homebrew. Because homebrew is a command-line application, to check if homebrew is installed, open up the Terminal application, and type `which brew`. If you see something like `/usr/local/bin/brew`, then you can skip this step. If nothing gets printed, then proceed.

**Installing Homebrew**

1. Open a web browser and go to https://brew.sh
2. Follow the instructions under the "Install Homebrew" section

#### Hugo

Hugo is a free open-source website builder that takes a set folder and files and creates a website that can be displayed on any browser. Like homebrew, hugo is a command line application. To check if it's installed, open a terminal and type `which hugo`. If nothing gets printed, then proceed.

**Installing Hugo**

1. Open a web browser and go to https://gohugo.io/getting-started/quick-start/
2. Follow the installation instructions

#### Atom

Atom is a text editor with a graphical user interface built by GitHub. It can be used to edit the text files used to build your website. Atom is not a command line application, so you can find it in your Applications folder if it's installed.

If you can't find Atom, then proceed

**Installing Atom**

1. Go to https://atom.io
2. Download the Atom files
3. Drag and drop the application file into your Applications directory.

## Some background on Git

The website is hosted on GitHub and managed using a program called Git. Git lets you manage versions of your website and makes it easy for multiple people to edit the same set of files.

Git is build around the concept of a repository. A Git repository is a folder that can be synced across multiple devices. The `krauselab` folder mentioned above is a repository.

GitHub separate from Git, but is offers a resource to remotely host repositories so that there are copies of the files not on your computer.  This is similar to the idea of folders on Dropbox.

There are a few Git commands/functions that you should be familiar with.

**Git clone** downloads a copy of a remote repository (i.e. a repository on GitHub) that _you do not have on your computer_. You will need to clone a repository if you have not already downloaded it on the computer you're using.

**Git fetch** downloads any changes that have happened on a remote repository since you last updated your local copy. It's a good idea to do a **fetch** any time you sit down to work on the website. You can do this on Atom once you've downloaded the website and and opened it using `File > Add Project Folder` by clicking the "Fetch" button in the lower right hand corner.

**Git pull** merged any changes that have been downloaded from the remote repository (i.e. on GitHub) into your local folder (i.e. the folder on your computer). Once you've hit the "Fetch" button on Atom, then if there are changes between your computer's folders and the remote, then the button will change to say "Pull". Clicking that will merge remote changes.

**Git add** also called "staging" on Atom, prepare recent changes to be uploaded to the remote repository. Any time you change a file on your computer and save it, you should see the file come up in the "Unstaged Changes" section on Atom's Git tab. If you don't see the Git tab, go to `Packages -> GitHub -> Toggle Git tab`. If this doesn't do anything, make sure you have at least one file open and/or try restarting Atom. Once files have been added or "staged", they are ready to be uploaded to GitHub. Note that you don't need to add all files that you've edited, only the ones that you are done editing. However, it's probably easiest just to Stage All every time your done working.

**Git commit** adds a set of staged changes to the repostories version history. By adding a "commit message" and hitting the "Commit" button, all staged changes will be added to your *local* copy of the repository.

**Git push** copies all of your local commits to the remote GitHub copy of the repository. You can find the Git push button where the "Fetch" and "Pull" button lives on Atom.

This is a lot of information, but here's an easy way to think about it.

*Before you start working on editing the website* always do a **fetch** and **pull**.

*Once you're done working on the website* always do **add**, **commit**, **push**.

If you follow these steps, you shouldn't have any issues with merges. If you have issues with merges, the easiest thing to do is probably to delete you local copy of the repository (abandoning all changes since your last push), re-clone the repository, and make your changes again.

## Downloading the repository  

Note, for all of the commands that begin with `$ `, this means you need to enter it into a command line using the Terminal Mac OS app.

1. Pick a folder to download the website repository into. When we talked, you picked `$HOME/Desktop/All\ Diane\'s\ Stuff/`. If you decide to put the website into another folder, then anywhere you see the `$HOME/Desktop/All\ Diane\'s\ Stuff/`, replace the path of the new directory.

2. Open the terminal, and change directory into the folder you want to use
```
$ cd $HOME/Desktop/All\ Diane\'s\ Stuff/
```

3. Clone the repository (this makes a copy of the repository on your computer)
```
$ git clone https://github.com/krauselab/krauselab.git
```

4. Change directory into the folder you just downloaded.

```
$ cd krauselab
```

## Editing the website

To edit the website, I recommend using Atom. Once it's installed from atom.io, you can open your website by going to `File -> Add Project Folder` and navigate to the folder where you cloned the website in the previous section.

If you want to see what edits to the website will look like after you've made your changes, you can use `hugo server` to render the website locally (i.e. on your computer) and see what it will look like when you deploy to GitHub.

To start the `hugo server`, do the following

1. Open the terminal and change directory into the website directory.

```
$ cd $HOME/Desktop/All\ Diane\'s\ Stuff/krauselab
```

2. To start **previewing the website locally**, start the hugo server

```
$ hugo server
```

3. Open a web browser and navigate to the following address:

```
localhost:1313
```

FYI - this address is only visible on your computer when you are running `hugo server`. If you close hugo server, the address will not work.

4. **Edit** the website using Atom and check your changes on the web browser. Whenever you save a file, `hugo server` will know and refresh the website for you.

5. When you are done, stop the server by holding `ctrl` and hitting `c`. This will stop the server.

6. To **publish** your changes to https://krauselab.net, once the server has been stopped, you need to push your changes to github.

You have two options:

Option A:
Push changes to github using Atom. Here's a video showing how this is done: https://www.youtube.com/watch?v=HZV7OKoD1Hc.
  1. Open the Git tab (in the menu bar, go to Packages > GitHub > Toggle Git Tab)
  2. Select all the changes you'd like to Push (you should see the files in the "Unstaged Changes" section)
  3. Hit "Stage Changes"
  4. Type out a commit message describing the changes
  5. Hit "Commit to master"
  6. Hit the "Push" button on the bottom bar.
  7. Check


Option B:
In terminal, run the following commands. For help, see this document (https://help.github.com/en/github/using-git/pushing-commits-to-a-remote-repository):

```
$ cd $HOME/Desktop/All\ Diane\'s\ Stuff/krauselab
$ git add .
$ git commit -m "replace this text with your description of the changes here"
$ git push
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

### Google Analytics

Analytics for the website can be tracked at analytics.google.com using the `krauselab.website@gmail.com` login. A beginner tutorial for Google Analytics can be found here: https://analytics.google.com/analytics/academy/course/6
