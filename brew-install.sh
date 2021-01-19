#!/bin/bash

# Installing brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Terminal
brew cask install iterm2

# Install openjdk
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11

brew cask install emacs
brew install ImageMagick
brew install python3
brew install leiningen
brew install htop
brew install tree
brew install watch
brew install wget

# Python deps
pip3 install pygmentize
