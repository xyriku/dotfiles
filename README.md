# My Dotfiles

This repository contains my dotfiles for my linux installations

## Requirements

Ensure you have the following installed on your system:

### Git

```
apt install git
pacman -S git
```
### Stow

```
apt install git stow
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/xyriku/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

If you do not wish to make backup directories, you may use

```
$ stow --adopt .
```
which will move any conflicting files and directories into your dotfiles directory. 
Make sure to commit all your changes before doing so. 
