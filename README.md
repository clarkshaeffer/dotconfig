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
    - [`tpm`](https://github.com/tmux-plugins/tpm) (note: archived)
    - [`tree-sitter-cli`](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
        - via `cargo` or pre-built binary
        - TODO: needed in container; also it's archived.
    - optional: [`vivify`](https://github.com/jannis-baum/vivify) for markdown viewer
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
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- lsp stack; includes:
    - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) 
    - [mason.nvim](https://github.com/williamboman/mason.nvim)
- colorschemes
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) (default)
- [rose-pine/neovim](https://github.com/rose-pine/neovim)
- nav, syntax
    - [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
    - [undotree](https://github.com/mbbill/undotree)
    - [vim-fugitive](https://github.com/tpope/vim-fugitive)
    - [nvim-surround](https://github.com/kylechui/nvim-surround)
    - [vim-closer](https://github.com/rstacruz/vim-closer)
    - [vim-pencil](https://github.com/preservim/vim-pencil)
    - [comment.nvim](https://github.com/numToStr/Comment.nvim)
- markdown
    - [obsidian.nvim](https://github.com/obsidian-nvim/obsidian.nvim/)
    - [vivify.vim](https://github.com/jannis-baum/vivify.vim)
- animation
    - [cellular-automaton.nvim](https://github.com/Eandrju/cellular-automaton.nvim)
    - [https://github.com/sphamba/smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim)

---

#### Docker
```bash
# if on linux, make sure to install `docker-buildx`.
docker build -t alpine-nvim .
docker run -it alpine-nvim
```

if on aarch64, install `lua-language-server` with [this command](https://github.com/williamboman/mason.nvim/discussions/1406):
```
:MasonInstall --target linux_arm64_gnu lua-language-server
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
