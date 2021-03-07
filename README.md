# dotfiles

**Acts Like ~/bin but more kickass🔥**

These are settings I use

These are constantly changing as I work on different types of projects so I don't necessarily always have an answer to "y do u do \_**\_ instead of \_\_**"

Enjoy!

## Usage

```bash
$ sudo apt install vim git xdotool zenity xsel
```

Setup github / git [SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) and [GPG](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification) to sign your commits.

### Installation

1. Clone Project to your home diretory

```bash
$ cd ~
$ git clone git@github.com:mwamodo/dotfiles.git
```

2. Install Requirements

(a) Install nodejs. [installation instructions](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)

(b) Install zsh
```bash
sudo apt install zsh
```

(c) Install OhMyZsh. [Installation Instructions](https://ohmyz.sh/#install)

Make zsh your default using ohmyzsh or use
```bash
chsh -s $(which zsh)
```

(d) Install nvm - node version manager [Installation Instructions](https://github.com/nvm-sh/nvm)

3. run get-me-started

```bash
cd dotfiles
bash get-me-started.sh
```
this brings in some vim configurations, [makes global npm install without sudo](https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md)

4. Bonus

(a) (Optional) install default node with nvm. Current LTS v14
 ```bash
 nvm install v14.15.4
 ```

(b) Install yarn.
```bash
npm install -g yarn
```

(c) Install eslint configurations
```bash
npx install-peerdeps --global eslint-config-wesbos
```

<!-- TODO: Add nvm installation to the get started script -->
<!-- TODO: npm without sudo setup with script-->
<!-- TODO: The same scripts for ubuntu and mac. -->
<!-- 1. Better get started script. -->
<!-- - include "git config --global core.excludesfile \${HOME}/.gitignore_global" -->