#!/usr/bin/env bash

# Installs packages for the Atom editor
# This requires Atom to be installed. Install it with ./brew.sh first

type -P apm > /dev/null

if [ $? -ne 0 ] ; then
	echo ""
	echo "Atom Package Manager doesn't seem to be installed."
	echo "Is Atom installed? It should be installed as part of brew.sh."
	echo "Please run that first or install Atom with:"
	echo "> brew cask install atom"
	echo ""
	exit -1
fi

apm install autocomplete-modules
apm install auto-detect-indentation
apm install atom-beautify
apm install markdown-preview-plus
apm install pigments
apm install open-recent
apm install todo-show
apm install react

apm install linter
apm install linter-eslint
apm install linter-markdown
apm install atom-ternjs
