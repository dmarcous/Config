#!/usr/bin/env bash

# Brew
## Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
## Initial setup - requires root
sudo chmod -R a+w /usr/local/*
brew update && brew upgrade
## Installs 
brew install wget gcc llvm fish thefuck fzf grc gradle sbt maven git-lfs node tmux openvpn automake libtool protobuf tig swig gflags glog openssl openssh cmake bazel shellcheck jq coreutils findutils bash bash-completion2 grep bash bats-core terraform
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

## Cleanup
brew cleanup

# Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
brew install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Fish
sudo chown -R $USER:staff .config/fish
fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/fish-bax jethrokuan/z orefalo/grc jethrokuan/fzf
curl -L https://get.oh-my.fish | fish

# fzf
$(brew --prefix)/opt/fzf/install
fzf

# Mac
defaults write com.apple.finder AppleShowAllFiles YES

# Sublime setup
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

# Git config
git config --global user.name "dmarcous"
git config --global user.email "dmarcous@gmail.com"
git config --global core.editor "subl -n -w"

# Python
## Setup root python
sudo pip3 install --upgrade pip setuptools wheel six
# Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
## -- Install Conda -- https://www.anaconda.com/distribution/
conda init
conda init zsh
conda init fish
## After anaconda setup
conda create --name [ENV_NAME]
conda install -c conda-forge 
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
conda install -c conda-forge scikit-learn tensorflow tensorboard
## Jupyter lab
conda install -c conda-forge nodejs jupyterlab nbresuse xeus-python jupyterlab-git jupytext nbdime jupyterlab-system-monitor
pip install aquirdturtle_collapsible_headings
jupyter labextension install jupyterlab_tensorboard 
jupyter labextension install nbgather
jupyter labextension install @lckr/jupyterlab_variableinspector
jupyter labextension install jupyterlab_voyager

# gcloud
cd
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-353.0.0-darwin-x86_64.tar.gz 
tar -xvf google-cloud-sdk-353.0.0-darwin-x86_64.tar.gz
rm -rf google-cloud-sdk-353.0.0-darwin-x86_64.tar.gz
cd google-cloud-sdk
./install.sh
bash
./install.sh
exit
./bin/gcloud init
cd
gcloud auth application-default login
