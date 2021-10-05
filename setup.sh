#!/usr/bin/env bash
set -e

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Installing ohmyzsh.."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wait 1
cp .zshrc ~/.zshrc
source ~/.zshrc
echo "Installing janus"
curl -L https://bit.ly/janus-bootstrap | bash
echo "Installing essential packages..."
brew bundle
echo "Set up complete. If you want to install extra stuff, run brew bundle --file Brewfile_extra"
