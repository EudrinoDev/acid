# GETTING STARTED WITH WRITING AN ***ACID*** THEME

## Requirements

For this tutorial I'm assuming you know what Liquid Templating is, you can write ***Angel Markup*** without any problems, and you have the latest cutting-edge version of ***Acid*** installed (From GitHub.).

## Steps

- First verify that you have ***Acid*** installed properly. Run this command from the command line to do so:

  ```bash
  $ acid-rs -v
  Acid v.1.1.1
  by Alexander Abraham. # This should be the output.
  ```

- Next let's create a new ***Acid*** theme in a directory called `mytheme`. To do this, run the following command:

  ```bash
  $ acid-rs --theme mytheme
  # OR
  $ acid-rs -t mytheme
  ```

  This should produce a directory called `mytheme` with the following file structure:

  ```text
  mytheme
  ├── README.markdown
  ├── assets
  │   └── styles.css
  ├── config.aml
  └── layouts
    ├── blog.html
    ├── page.html
    └── post.html
  ```
  Let's go through these files and directories one by one:

  - `README.markdown`: This file is optional but good to have. Here you can describe your theme and how to use it a little bit.
  If you open `README.markdown` in your favourite editor, you might see something like this:
  ```markdown
  # mytheme

  Describe your theme here.
  ```
  If you're uploading your theme to GitHub, this is the first page that people will see for your ***Acid*** theme's repository. Make this pretty. ;) ***Acid*** only accepts themes hosted on GitHub, so you *will* have to upload your theme to GitHub.
  - `config.aml`: This file is central to the whole project. Without it, ***Acid*** will not run.
  If you open `config.aml` in your favourite editor, you might see something like this:
  ```text
  'name' => 'mytheme'
  'type' => 'theme'
  'version' => '1.0.0'
  'assets_path' => 'assets'
  ```
  `name` is the name of the theme and helps with organizing different things. `type` indicates to ***Acid*** that this is a theme. `version` is for versioning different releases of your theme. `assets_path` indicates to ***Acid*** where this theme's static assets like CSS and Javascript can be found.
  - `assets/styles.css`: This stylesheet could be used in your templates for styling your page.
  - `layouts/blog.html`: A layout for listing all your blog posts could look something like this:
  ```Liquid
  <!DOCTYPE html>
  <html>
   <head>
    <!--Put your header code here.-->
   </head>
   <body>
    {% for post in posts %}
     <h2>{{ post.title }}</h2>
     <p>
      {{ post.description }}
     </p>
     <p>
      <a href="{{ post.url }}">Read Me</a>
     </p>
   {% endfor %}
   </body>
  </html>
  ```
  All your site's posts are stored in the variable `posts`. This is always the case. If you use anything else, it will not work. You can iterate through this variable and retrieve data about a post which is set in the front matter of your Markdown posts. All your site-wide variables are stored in a site's `config.aml`.
  - `layouts/page.html`:
  ```Liquid
  <!DOCTYPE html>
  <html>
   <head>
    <!--Put your header code here.-->
   </head>
   <h1>{{ site.title }}</h1>
   <body>
    {{ page.content }}
   </body>
  </html>
  ```
  This layout would be used for "About" or "Socials" pages. You can access the frontmatter of your content page with `{{ page.whatever }}`, where `whatever` represents anything you have in your frontmatter. The `{{ page.content }}` variable is fixed. This variable returns the text content of any page. Site-wide variables that have been set in your site's `config.aml` can be accessed via `{{ site.your_field }}`, where `your_field` represents a key that is present in your site's `config.aml`.
  - `layouts/post.html`:
  ```Liquid
  <!DOCTYPE html>
  <html>
   <head>
    <!--Put your header code here.-->
   </head>
   <body>
    {{ page.content }}
   </body>
  </html>
  ```
  This layout would be used for blog posts. You can access the frontmatter of your post with `{{ page.whatever }}`, where `whatever` represents anything you have in your frontmatter. The `{{ page.content }}` variable is fixed. This variable returns the text content of any page. Site-wide variables that have been set in your site's `config.aml` can be accessed via `{{ site.your_field }}`, where `your_field` represents a key that is present in your site's `config.aml`.
- Finally, upload your theme to a GitHub repository and then people can use your theme by putting the following in their `config.aml` (`yourusername` is your GitHub username and `your_repository` is your repository's name.):
  ```text
  'theme' => 'https://github.com/yourusername/your_repository'
  'use_remote_theme' => 'true'
  ```
- If you'd like to have an example theme to work with or have a look at, have a look at ***[Acid Tripping](https://github.com/iamtheblackunicorn/acid-tripping)***.
- If you'd like to submit your theme to ***Acid's*** official theme platform, check out [this repository](https://github.com/iamtheblackunicorn/acid-themes).
