# Ricco's dotfiles

These are my configuration files for various system settings. Feel free to use
them if you can.

## ⚒  Installation

Clone the repository with `git clone git@github.com:fiskeben/dotfiles.git`.
Currently these files expect to exist in `~/dotfiles`.

Run `install.sh` which will create a symlink to `.bash_profile` and `.inputrc`
in your home directory.

### 🙈  Local variations

If it's necessary to set local values that don't belong in the base installation
(say, work related environment variables), create a folder names `local` and
create files in that directory as needed.

### 🍺  Homebrew packages

Run `brew.sh` to install essential apps and tools.
This requires Homebrew to be install already. See [the Homebrew
webpage](http://brew.sh) for more information on how to install it.

### ⚛  Atom packages

Run `atom.sh` to install some nice to have packages for the Atom editor. This
requires Atom to be installed (for instance by running the Homebrew script).

## 👍  Credits

The layout, scripting, aliases, functions, and more is based on [Lars Kappert's
article](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.uoen8rp4a) 
and the examples linked to in that article.

For more information on what dotfiles is etc, see [GitHub's
guide to dotfiles](http://dotfiles.github.io).

