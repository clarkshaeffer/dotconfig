## My NVIM Configs

My personal, replicable Neovim setup. 

Springboarded from [The Primeagen's video](https://www.youtube.com/watch?v=w7i4amO_zaE&t=61s)   

---

#### Install
- reset `nvim` if needed: 
```bash
rm -rf ~/.config/nvim/*
rm -rf ~/.local/share/nvim
```
- get [ripgrep](https://github.com/BurntSushi/ripgrep)
- clone -> copy contents to `~/.config/nvim`
- clone [packer](https://github.com/wbthomason/packer.nvim)
- source Packer (while wading through the errors):
    - `vim lua/clark/packer.lua`
    - `:so`
    - `:PackerSync`
- to restore colors: `:lua ColorsReset()`
- when any file doesn't run, `:TSInstall <language_treesitter>` or `:Mason` + search (`i` to install)

Should be golden!
 
---
 
#### Plugins used
- [packer](github.com/wbthomason/packer.nvim)
- [treesitter](github.com/nvim-treesitter/nvim-treesitter)
- [telescope](github.com/nvim-telescope/telescope.nvim)
- [rose pine (colorscheme)](github.com/rose-pine/neovim)
- [harpoon](github.com/theprimeagen/harpoon)
- [comment.nvim](github.com/numToStr/Comment.nvim)
- [undotree](github.com/mbbill/undotree)
- [vim-fugitive](github.com/tpope/vim-fugitive)
- [lsp-zero](github.com/'VonHeikemen/lsp-zero.nvim')
- [nvim-surround](github.com/kylechui/nvim-surround)
- [vim-pencil](github.com/preservim/vim-pencil)
