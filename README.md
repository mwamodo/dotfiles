# dotfiles

**Acts Like ~/bin but more kickass🔥**

These are settings I use

These are constantly changing as I work on different types of projects so I don't necessarily always have an answer to "y do u do \_**\_ instead of \_\_**"

Enjoy!

## Usage

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

(c) Make zsh your default using 
```bash
chsh -s $(which zsh)
```

(d) Install OhMyZsh. [Installation Instructions](https://ohmyz.sh/#install)

(e) Install nvm - node version manager [Installation Instructions](https://github.com/nvm-sh/nvm)

(f) (Optional) install default node with nvm. Current LTS v14
 ```bash
 nvm install v14.15.4
 ```
 
(g) Make global npm install without sudo [check how](https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md)

(h) Install yarn.
```bash
npm install -g yarn
```

```bash
npx install-peerdeps --global eslint-config-wesbos
```

then:

```bash
$ sudo apt install vim git xdotool zenity xsel
```

3. run get-me-started

```bash
cd dotfiles
bash get-me-started.sh
```

<!-- TODO: Add nvm installation to the get started script -->
<!-- TODO: npm without sudo setup with script-->
<!-- TODO: The same scripts for ubuntu and mac. -->
