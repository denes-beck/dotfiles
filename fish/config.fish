set fish_greeting ""

# nvm setup
set node_version 22.13.1
if type -q nvm
    nvm use $node_version -s &>/dev/null
    if test $status -eq 1
        echo "==> Installing Node version v$node_version..."
        nvm install $node_version -s
        echo "==> Setting Node version to v$node_version..."
        nvm use $node_version -s
        echo "==> Using Node version v$node_version"
    end
    set nvm_default_version $node_version -U
else
    echo "==> Node Version Manager is not installed!"
end

# pyenv setup
if type -q pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    pyenv init - | source
else
    echo "==> Pyenv is not installed!"
end

# Aliases
# NeoVim
alias vi nvim

# List
alias ll "eza -l --icons --git -h"
alias lla "eza -l --icons --git -h -a"

# Git
alias lg lazygit

# Update
alias u "brew update && brew upgrade && brew cleanup && fisher update"

# GitHub Copilot
alias gcs "gh copilot suggest"
alias gce "gh copilot explain"

# Terraform
alias tf terraform

# Ansible
alias a ansible

# Kubectl
alias k kubectl

# Docker
alias d docker

# Docker Compose
alias dc docker-compose

# Commitizen
alias c "cz commit"

# fzf.fish keybindings
fzf_configure_bindings --directory=\cf --git_log=\co --git_status=\cs --processes=\cp
