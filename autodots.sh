#!/bin/bash
# script to automatic update dotfiles

# author: crunchysoul
# create: 2018-02-26 20:31
# copyright: WTFPL
# request: install fswatch

# vim configs
NVIM_INIT=$HOME/.config/nvim/init.vim
VIMRC=$HOME/.vimrc
VIM_CONFIG=$HOME/.vim/config/*.vim
VIM_PLUGINS_CONFIG=$HOME/.vim/config/plugins_config/*
VIM_SNIPPET=$HOME/.vim/mysnips/*
VIM_SPELL=$HOME/.vim/spell
VIM=($NVIM_INIT $VIMRC $VIM_CONFIG $VIM_PLUGINS_CONFIG $VIM_SNIPPET $VIM_SPELL)

# zsh configs
ZSH=$HOME/.zshrc

# git configs
GIT_CONFIG=$HOME/.gitconfig
GIT_IGNORE=$HOME/.gitignore_global
GIT_CONFIG_ISOBAR=$HOME/codes/projects-isobar/.gitconfig
GIT=($GIT_CONFIG $GIT_IGNORE $GIT_CONFIG_ISOBAR)

# bash script
SCRIPTS=$HOME/codes/projects-script/*

# other configs
OTHERS=()

# list all dotfiles in DOTFILES variable
DOTFILES=(${VIM[*]} $ZSH ${GIT[*]} $SCRIPTS $OTHERS)

# use fswatch listen change and fire script
fswatch -0 ${DOTFILES[*]} | xargs -0 -n 1 bash git_commit_push.sh
