# My Dotfiles

This directory contains my dotfiles

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


