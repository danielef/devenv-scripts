#!/bin/bash

# Installing brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Terminal
brew install --cask iterm2

# Install openjdk
brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk8
brew install --cask adoptopenjdk11

brew install --cask emacs
# Fix font rendering
defaults write org.gnu.Emacs AppleFontSmoothing -int 0

brew install ImageMagick
brew install python3
brew install leiningen
brew install htop
brew install tree
brew install watch
brew install wget
brew install nvm
brew install pygments

