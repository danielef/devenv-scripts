#!/bin/bash

# Installing brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Terminal
brew install --cask iterm2

# Install openjdk
brew install --cask temurin@25
brew install clojure/tools/clojure

brew install --cask visual-studio-code
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
brew install dockutil
# brew install pygments
# brew install ffmpeg

