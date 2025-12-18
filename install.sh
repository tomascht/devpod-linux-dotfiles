#!/usr/bin/env bash

echo "Installing dotfiles and more"
echo "install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >>~/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc

source ~/.bashrc

brew install zsh neovim ripgrep lazygit zoxide

echo 'exec zsh' >>~/.bashrc

# Lazyvim
# mv ~/.config/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'alias ll="ls -alh"' >>~/.zshrc
echo 'alias v="nvim"' >>~/.zshrc
echo "alias gpp='git push -u origin $(git rev-parse --abbrev-ref HEAD)'" >>~/.zshrc

# zoxide setup
eval "$(zoxide init zsh --cmd cd)"
