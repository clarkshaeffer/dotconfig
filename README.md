## My NVIM Configs

My personal, replicable Neovim setup. 

Springboarded from [The Primeagen's video](https://www.youtube.com/watch?v=w7i4amO_zaE&t=61s)
Refactored using [lazy.nvim](https://github.com/folke/lazy.nvim)

---

#### Install
- reset `nvim` if needed: 
```bash
rm -rf ~/.config/nvim/*
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```
- get [ripgrep](https://github.com/BurntSushi/ripgrep)
- clone -> copy contents to `~/.config/nvim`

and then:
```
nvim
```
Just like that!


--- 

###### Assorted notes
- For Python third-party package LSP support:
    - In `~/.local/share/nvim/mason/packages/python-lsp-server/venv/pyenv.cfg`, set `include-system-site-packages` to `true`.
- When LSP/highlighters not auto-installed, `:TSInstall <language_treesitter>` or `:Mason` + search (`i` to install)

See Dockerfile

---

#### Plugins used
- [packer](https://github.com/wbthomason/packer.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [rose pine (colorscheme)](https://github.com/rose-pine/neovim)
- [harpoon](https://github.com/theprimeagen/harpoon)
- [comment.nvim](https://github.com/numToStr/Comment.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [lsp-zero](https://github.com/'VonHeikemen/lsp-zero.nvim')
- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [vim-pencil](https://github.com/preservim/vim-pencil)
:x
