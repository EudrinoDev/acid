# DEPLOYING YOUR ACID SITE

This small tutorial will focus on how you could deploy your site on GitHub Pages.

## Requirements

You should have Git installed and available from the command line and have a GitHub account.
I'm assuming you already have an ***Acid*** site. If you do, follow these steps. If not, have a look at the [tutorial](TUTORIAL.markdown).

## Steps

- Initialize an empty Git repository in your project directory with this command:

```bash
$ git init
```

- Create a file called `rust.yml` at this path in your project directory: `.github/workflows`. Once this is done, fill it with the following code:

```YAML
on: [push]
name: Acid Project CI
jobs:
  build_and_test:
    name: Acid Project CI
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions-rs/toolchain@v1
        with:
          toolchain: stable
      - uses: actions-rs/cargo@v1
        with:
          command: build
          args: --release
      - uses: actions-rs/cargo@v1
        with:
          command: run
          args: -b .
      - name: Deploy
        uses: JamesIves/github-pages-deploy-action@v4.2.5
        with:
          branch: gh-pages
          folder: build
```

- Once this is completed, head over to GitHub and create a new public, empty repository.

- Next, you need to head over to the "Settings" page of your GitHub account. Once there, go to "Developer Settings" and then to "Personal access tokens". Create a new token that allows everything (Tick all available boxes.). Copy the token and store it somewhere safe.

- Once you have your token, run this command in the project directory (`YOURTOKEN` represents your personal access token, `yourusername` represents your GitHub username, and `your_repository` represents the name of your repository.):

```bash
git remote add origin https://YOURTOKEN@github.com/yourusername/your_repository
```

- Commit your changes with the following commands:

```bash
$ git add -A
$ git commit -m "My shiny new Acid website."
```

- Wait for the GitHub action to complete.
- Finally, head over to the "Pages" section of your repository's settings and choose "gh-pages" as the source for your repository's website.
- Head over to the URL that the "Pages" page shows you and you should see your shiny new website.

## Note

If you created your GitHub repository with the name `yourusername.github.io`, where `yourusername`represents your GitHub username, you have to set your project's `baseurl` field to `/`. If you created your repository at `some_repo`, where `some_repo` represents some repository of yours, then set your project's `baseurl` field to `/some_repo/`.
