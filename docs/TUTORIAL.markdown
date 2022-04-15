# GETTING STARTED WITH WRITING AN ***ACID*** SITE

## Requirements

For this tutorial I'm assuming you know what Markdown is, you can write JSON without any problems, and you have the latest cutting-edge version of ***Acid*** installed (From GitHub.).

## Steps

- First verify that you have ***Acid*** installed properly. Run this command from the command line to do so:

```bash
$ acid -v
Acid v.1.1.0 # This should be the output.
```

- Next let's create a new ***Acid*** site in a directory called `mysite`. To do this, run the following command:

  ```bash
  $ acid --project mysite
  # OR
  $ acid -p mysite
  ```

  This should produce a directory called `mysite` with the following file structure:

  ```text
  mysite
  ├── README.markdown
  ├── config.json
  ├── index.markdown
  ├── pages
  │   └── about.markdown
  └── posts
    └── 2022-03-29-Welcome.markdown
  ```
  Let's go through these files and directories one by one:

  - `README.markdown`: This file is optional but good to have. Here you can describe your site a little bit.
  If you open `README.markdown` in your favourite editor, you might see something like this:
  ```markdown
  # mysite

  Describe your site here.
  ```
  If you're uploading your site to GitHub, this is the first page that people will see for your ***Acid*** site's repository. Make this pretty. ;)
  - `config.json`: This file is central to the whole project. Without it, ***Acid*** will not run.
  If you open `config.json` in your favourite editor, you might see something like this:
  ```JSON
  {
    "description": "Your site's description goes here.",
    "theme": "https://github.com/iamtheblackunicorn/acid-tripping",
    "baseurl": "/",
    "type": "site",
    "use_remote_theme": "true",
    "title": "mysite"
  }
  ```
  `description` describes what your site is about. `type` tells ***Acid*** that this project is an ***Acid*** site. `title` tells ***Acid*** the title of your site. Finally, the last two fields: `theme` and `use_remote_theme` tell ***Acid** whether this site uses a third-party theme and whether to use this theme. Themes are documented [here](THEMING.markdown). Please note that any variables that are used in the theme's configuration file also have to present in your site's configuration file otherwise ***Acid*** gets confused. You do not have to use a third-party theme, you can also create your own layouts by putting Liquid templates in a directory called `layouts`.
  - `index.markdown`: This file generates your blog's main blog page, `index.html`.
  If you open it in your favourite editor, you might see something like this:
  ```markdown
  ---
  title:My Blog
  layout:blog
  ---
  ```
  In this file, we request the `blog` layout from our third-party theme set in our `config.json`'s `theme` field and we give the page the `title`, "My Blog".
  - `pages/about.markdown`:
  This page is a so-called content page, it holds static content that doesn't change. It is similar to `index.markdown` except that we can put some of our own text into it. The `page` layout is requested from the theme and given the page title of `About`. Here's what `about.markdown` looks like:
  ```markdown
  ---
  title:About
  layout:page
  description:About me.
  ---

  ## About
  Write something about yourself here.
  ```
  - `posts/2022-03-29-Welcome.markdown`:
  The `posts` directory holds all our blog's posts and is also a Markdown page that requests a certain layout from the theme we set in our `config.json` file. Since this is a blog post, it requests the `post` layout. Open the file in your favourite editor to inspect it further. Here's what you might see:
  ```markdown
  ---
  title:Welcome
  layout:post
  description:A short welcome post.
  ---

  ## Your post
  Your post's contents goes here.
  ```
  - `assets` and `layouts`: If you plan to build your own custom layouts for your site and use custom CSS and Javascript, you will need to remove the `theme` and `use_remote_theme` lines from your configuration file. To include your CSS and JS assets, add the following to your `config.json` instead:
  ```JSON
  "has_assets":"true",
  "assets_path":"assets"
  ```
- Finally, compile your site, by changing directory into `mysite` and invoking ***Acid's*** build routine with these commands:

```bash
# Change directory.
$ cd mysite
# Build the site.
$ acid -b .
```

- (Optional) If you would like to know what your site looks like, run this inside `mysite`:

```bash
$ acid -s .
```
