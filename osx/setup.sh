#!/usr/bin/env bash

# Brew
## Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
## Initial setup - requires root
sudo chmod -R a+w /usr/local/*
brew update && brew upgrade
## Installs 
brew install wget gcc llvm fish thefuck fzf grc gradle sbt maven git-lfs node tmux openvpn automake libtool protobuf tig swig gflags glog openssl openssh cmake bazel shellcheck jq coreutils findutils bash bash-completion2 grep
brew install caskroom/cask/brew-cask
brew cask install google-cloud-sdk
brew install kubectl
brew tap caskroom/fonts
brew tap caskroom/cask
brew cask install font-inconsolata
brew cask install font-hack-nerd-font ### to use : change on iterm2 profile settings to use font = Hack nerd font)
brew cask install insomnia
$(brew --prefix)/opt/fzf/install
## Cleanup
brew cleanup

# Zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher z fzf edc/bass grc
curl -L https://get.oh-my.fish | fish

# Python
## Setup
sudo pip3 install --upgrade pip setuptools wheel six
## After anaconda setup
pip install --upgrade pip setuptools wheel six
pip install virtualenv virtualenvwrapper
pip install --upgrade imutils
pip install numpy scipy pandas scikit-learn
conda install -c conda-forge pyarrow
pip install jupyter
pip install pillow
pip install h5py
pip install --upgrade scikit-learn
pip install --upgrade matplotlib
pip install tensorflow / 
### To upgrade tensorflow to mac version :
# pip install tensorflow --upgrade https://github.com/lakshayg/tensorflow-build/releases/download/tf1.9.0-macos-py27-py36/tensorflow-1.9.0-cp36-cp36m-macosx_10_13_x86_64.whl
pip install awscli
pip install google-cloud
## Jupyter lab
conda install -c conda-forge jupyterlab
jupyter labextension install @jupyterlab/toc
jupyter labextension install @jupyterlab/git
pip install jupyterlab-git
jupyter serverextension enable --py jupyterlab_git
conda install -c conda-forge ipywidgets
conda install -c pyviz/label/dev pyviz
pip install black

# Mac
defaults write com.apple.finder AppleShowAllFiles YES

# Sublime setup
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add \
'{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

