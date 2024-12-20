FROM alpine:latest

# install dependency libraries
RUN apk update && apk upgrade && \
    apk add curl git ripgrep neovim tmux \
    build-base python3 nodejs npm

# other packages:
# openjdk11

# start in ~
WORKDIR /root

# get source
RUN git clone https://github.com/clarkshaeffer/dotconfig.git

# copy source
RUN mkdir -p .config/nvim && cp -r dotconfig/* .config/nvim
RUN mv dotconfig .dotconfig
RUN mv .dotconfig/sh ./.sh/
RUN chmod +x .sh/*

# create sh aliases in .profile
RUN touch .profile
RUN echo 'alias lazy="nvim /root/.config/nvim/lua/clark/lazy.lua"' >> .profile
RUN echo 'alias vim="nvim"' >> .profile
RUN echo 'alias :q="exit"' >> .profile
RUN echo 'alias cellfps="sh /root/.sh/cellularfps.sh"' >> .profile

# Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN mkdir /root/dev

# source .profile aliases
ENV ENV="/root/.profile"

# open shell, no `run` commands needed
CMD [ "sh" ]

# `run` parameters: `-it` for interactive
