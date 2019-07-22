#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
	echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
	chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget

brew install tree

# Install more recent versions of some macOS tools.
brew install vim

brew install git

brew install golang

# Casks
brew tap caskroom/cask

brew cask install visual-studio-code
brew cask install google-chrome
brew cask install spotify
brew cask install slack
brew cask install docker
brew cask install java
brew cask install dbeaver-community
brew cask install ngrok

# Remove outdated versions from the cellar.
brew cleanup
