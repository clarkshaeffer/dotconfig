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
Python:
- Third-party package LSP support:
    - In `~/.local/share/nvim/mason/packages/python-lsp-server/venv/pyenv.cfg`, set `include-system-site-packages` to `true`.
- LSP warnings: boilerplate `~/.config/pycodestyle`:
```
[pycodestyle]
ignore = E302, E303, W391, E501, E704
```

---

#### Plugins Used
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [tokyonight (colorscheme)](https://github.com/folke/tokyonight.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [harpoon](https://github.com/theprimeagen/harpoon)
- [undotree](https://github.com/mbbill/undotree)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [lsp-zero](https://github.com/'VonHeikemen/lsp-zero.nvim')
    - [mason](https://github.com/williamboman/mason.nvim)
- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [vim-pencil](https://github.com/preservim/vim-pencil)
- [markdown-preview.nvim](https://github.com/williamboman/mason.nvim)
- [comment.nvim](https://github.com/numToStr/Comment.nvim)
- [cellular-automaton](https://github.com/williamboman/mason.nvim)

---

#### TODO
- `markdown-preview.nvim` on container: `bash` -> `npm`. Alpine doesn't have `bash`.

#### Docker
```
docker build -t alpine-nvim .
docker run -it alpine-nvim
```
