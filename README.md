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
$ cd $HOME/projects/website
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
$ cd $HOME/projects/website/academic-kickstart
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
