#!/bin/bash

# Installing brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install emacs
brew install ImageMagick
brew install python3
brew install pygmentize
brew install leiningen
brew install htop
brew install tree
brew install watch
brew install wget

brew cask install iterm2

# Install openjdk
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11
