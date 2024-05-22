# #!/bin/bash

# copy to ~/.config/nvim
# zsh reset
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
#
# copy
# mkdir -p ~/.config/nvim
cp -r . ~/.config/nvim
#
# pycodestyle
cp ./pycodestyle ~/.config


# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#
# aliases
echo ./sh/rc.sh >> ~/.zshrc


# tmux.config
# mkdir -p ~/.tmux/plugins/tpm
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
rm ~/.tmux.conf
cp ./sh/tmux.conf ~/.tmux.conf

# python lsp support (must be after nvim starts and mason auto-configs)
# `~/.local/share/nvim/mason/packages/python-lsp-server/venv/pyenv.cfg`, set `include-system-site-packages` to `true`.

# apply tmux + .zshrc
# exec zsh
#
# end: open nvim
# nvim
vim
