## My NVIM Configs

My personal, replicable Neovim setup. 

Springboarded from [The Primeagen's video](https://www.youtube.com/watch?v=w7i4amO_zaE&t=61s);

Refactored using [lazy.nvim](https://github.com/folke/lazy.nvim)

---

#### Install
- reset `nvim` if needed: 
```bash
rm -rf ~/.config/nvim/*
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```
- get:
    - [`ripgrep`](https://github.com/BurntSushi/ripgrep) (used for `telescope` grep search)
    - [`tpm`](https://github.com/tmux-plugins/tpm)
- clone -> copy contents to `~/.config/nvim`

and then:
```
nvim
```
Just like that!


--- 

#### Assorted notes
Python:
- Third-party package LSP support:
    - In `~/.local/share/nvim/mason/packages/python-lsp-server/venv/pyenv.cfg`, set `include-system-site-packages` to `true`.

---

#### Plugins Used
###### Neovim:
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) (colorscheme)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [harpoon](https://github.com/theprimeagen/harpoon)
- [undotree](https://github.com/mbbill/undotree)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [lsp-zero.nvim](https://github.com/'VonHeikemen/lsp-zero.nvim')
    - [mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [vim-pencil](https://github.com/preservim/vim-pencil)
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [comment.nvim](https://github.com/numToStr/Comment.nvim)
- [cellular-automaton.nvim](https://github.com/Eandrju/cellular-automaton.nvim) (for fun)

---

#### Docker
```bash
# if on linux, make sure to install `docker-buildx`.
docker build -t alpine-nvim .
docker run -it alpine-nvim
```

---

#### TODO
- list package dependencies after nvim 'plugins used'
    - i.e. `python3`, `nodejs`, `npm`, etc.
- automated init `.sh`:
    - copy `nvim` to `~/.config` (exclude `.git/`)
    - `.*rc` (depending on shell)
    - `~/.tmux.conf` + `tpm`
    - `ohmyzsh`
    - `pycodestyle`
    - Python Third-party package LSP support
        - `~/.local/share/nvim/mason/packages/python-lsp-server/venv/pyenv.cfg`, set `include-system-site-packages` to `true`.
- Alpine Dockerfile:
    - tmux:
        - `gcl git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm`
    - `.zshrc` to `.profile`, remove `alias ... >>` stuff
    - Is there a way to open `nvim` automatically??

