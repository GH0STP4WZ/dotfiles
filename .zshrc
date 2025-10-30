
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/gh0stp4wz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob
unsetopt autocd nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

#########################
# Auroras Custom Config #
#########################

echo "Loading Config. Please wait..."

######################
# Better LS with EZA #
######################

echo "configuring EZA for ls..."

# Base ls with list format and hidden files by default
alias ls='eza -la --icons --hyperlink'
# Grid view (when you want compact)
alias lsg='eza -a --icons --hyperlink'
# Tree view
alias lt='eza -la --icons --hyperlink --tree --level=2'
# With git status
alias lg='eza -la --icons --hyperlink --git'
# Sort by modified time (newest first)
alias lm='eza -la --icons --hyperlink --sort=modified'
alias lmr='eza -la --icons --hyperlink --sort=modified --reverse'
# One column
alias l1='eza -1a --icons --hyperlink'
# Without hidden files (when you need it)
alias lsh='eza -l --icons --hyperlink'
#################
# Dotfiles Sync #
#################

echo "Registering Shortcut for Dotfiles Sync..."

# add a `config` command to sync dotfiles to github.com/gh0stp4wz/dotfiles with git
# Makes a special version of `git` that works exclusively in `~/.cfg` and only tracks
# manually added files.
# !ToDo: Make this work with my github account
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#####################################
# I prefer NANO over VIM thank you. #
#####################################

echo "Registering NANO as the default text editor..."

# Normal Text Editing
export EDITOR='/usr/bin/nano'
# for Git (Yes I am running this every time I open my terminal. Bite Me.)
git config --global core.editor "/usr/bin/nano"
export GIT_EDITOR=nano

echo "🆗 Loading Complete! Proceeding to interactive shell."
clear

#############################
# Prepare interactive Shell #
#############################

# Show current system status with Fastfetch,
# While also showing pride with Hyfetch's Ascii art coloring
hyfetch
# Initialize Oh My Posh shell with custom theme 🖤
eval "$(oh-my-posh init zsh --config ~/.config/omp/ctp-mr.omp.json)"
