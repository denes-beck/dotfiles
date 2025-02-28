# 🚀 Dotfiles

My dotfiles for NeoVim, Tmux.

## 🗑️ Clean

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim ~/.config/tmux/tmux.conf ~/.config/fish/config.fish
```

## 🛠 Install

==> Install [neovim](https://github.com/neovim/neovim)\
==> Install [tmux](https://github.com/tmux/tmux)\
==> Install [tpm](https://github.com/tmux-plugins/tpm)\
==> Manually install the [catppuccin for tmux](https://github.com/catppuccin/tmux) plugin

Clone the repository:

```bash
git clone --depth 1 https://github.com/denesbeck/dotfiles.git ~/.config
```

==> Reload Tmux: `tmux source ~/.config/tmux/tmux.conf`\
==> Install [oh-my-zsh](https://ohmyz.sh/)

## ⚡ Tools & Plugins

### 📦 General

[bottom](https://github.com/ClementTsang/bottom)\
[commitizen](https://commitizen-tools.github.io/commitizen/)\
[eza](https://eza.rocks/)\
[fzf](https://github.com/junegunn/fzf)\
[httpie](https://httpie.io/)\
[iTerm2](https://iterm2.com/)\
[iTerm2 colorschemes](https://iterm2colorschemes.com/)\
[jq](https://github.com/jqlang/jq)\
[lazygit](https://github.com/jesseduffield/lazygit)\
[nvm](https://github.com/nvm-sh/nvm)\
[pyenv](https://github.com/pyenv/pyenv)\
[ripgrep](https://github.com/BurntSushi/ripgrep)

### 🔌 Oh My Zsh Plugins

[z](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z)

## 🧙🏻‍♂️ Aliases

```zsh
alias vi=nvim
alias ll="eza -l --icons --git -h"
alias lla="eza -l --icons --git -h -a"
alias lg=lazygit
alias u="brew update && brew upgrade && brew cleanup"
alias gcs="gh copilot suggest"
alias gce="gh copilot explain"
alias gem="git commit --allow-empty -m"
alias tf=terraform
alias a=ansible
alias k=kubectl
alias d=docker
alias dc="docker-compose"
alias c="cz commit"
```
