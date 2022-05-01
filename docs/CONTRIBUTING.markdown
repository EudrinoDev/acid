# CONTRIBUTING

## Options

If you would like to contribute, there are a couple of options:

- ***1.) Write a theme for Acid. Find out more about that [here](https://github.com/iamtheblackunicorn/acid/blob/main/docs/THEMING.markdown). (No write-access to this repository needed.)***
- ***2.) Check out what still needs to be done or implemented. Find out more about that [here](https://github.com/iamtheblackunicorn/acid/blob/main/docs/TODO.markdown). (Write-access to this repository needed.)***
- ***3.) Add documentation in your language. (Write-access to this repository needed.)***
- ***3.) Test Acid thoroughly and file an issue. Find out more about that [here](https://github.com/iamtheblackunicorn/acid/blob/main/docs/TUTORIAL.markdown). (Write-access to this repository needed.)***

## Guide

This guide applies to all options that require write-access to this repository. To contribute, you must have the following tools installed and available from the command line:

- Git
- Acid
- Rust
- Cargo

If you install ***Acid*** the recommended way, Rust and Cargo should be installed automatically. You can find out how to install ***Acid*** [here](https://github.com/iamtheblackunicorn/acid/blob/main/docs/INSTALLATION.markdown). In addition to these tools, you will also need a GitHub account. Sign up for GitHub [here](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home).

Once all these things are done and configured, follow these steps:

- 1.) Fork this repository.
- 2.) Clone the forked repository, where `yourusername` represents your GitHub username.
  ```bash
  $ git clone https://github.com/yourusername/acid.git
  ```
- 3.) Make your changes.
- 4.) Test your changes. (If ***Acid*** breaks as a result of your contribution, I will revert the change and re-file your Pull Request.)
- 5.) Execute the following commands to commit and push your changes. (`Describe your change.` should describe what you have changed.)
  ```bash
  git add -A
  git commit -m "Describe your change."
  git push -u origin main
  ```
- 6.) File a Pull Request.
