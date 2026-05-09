
# rust for tree-sitter-cli
export PATH="$HOME/.cargo/bin:$PATH"
# if nvim is from source (wsl)
# alias vim="~/.squashfs-root/AppRun"

alias vim="nvim"
alias :q="exit"
alias :x="exit"
alias dockerls="~/.config/nvim/sh/dockerls.sh"
alias dockerprune="docker container prune -f && docker image prune -f --all && docker volume prune -f"
alias gcmm="gcm && ggl && gfa && gbdlocal"
alias psqldev="psql -h localhost -p 5432 -U test_user -d test_db"
# alias tm="tmux new -n"
