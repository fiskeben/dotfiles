# Ricco's dotfiles

These are my configuration files for various system settings.
Feel free to use them if you can.

## ⚒  Installation

Clone the repository with `git clone git@github.com:fiskeben/dotfiles.git`.

Run `install.sh` which will copy all necessary files to your home directory.

⏰ **Warning:** *This will likely overwrite essential files in your home directory!
Make sure to backup important files before you continue.*

The installation script takes up to two arguments:

* `-f` Force installation (don't ask to continue). Makes things go faster.
* `-s` Don't download the latest changes from GitHub. Makes things go even faster.

### 🙈  Local changes

If you need to set values or add functionality that doesn't belong in the base installation
(say, work related environment variables), you can put them in a file called `.extra` in your home directory.

The file will be read after the others so you can also use it to override things added by these scripts.

### 🍺  Homebrew packages

Run `brew.sh` to install essential apps and tools.
This requires Homebrew to be installed already. See [the Homebrew
webpage](http://brew.sh) for more information on how to install it.

### ⚛  Atom packages

Run `atom.sh` to install some nice to have packages for the Atom editor. This
requires Atom to be installed (for instance by running the Homebrew script first).

## 👍  Credits

The layout, scripting, aliases, functions, and more is based on [Lars Kappert's
article](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.uoen8rp4a)
and the examples linked to in that article, especially [Mathias Bynens'
dotfiles](https://github.com/mathiasbynens/dotfiles).

For more information on what dotfiles is etc, see [GitHub's
guide to dotfiles](http://dotfiles.github.io).
