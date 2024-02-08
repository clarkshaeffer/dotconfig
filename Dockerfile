FROM alpine:latest

# install dependency libraries
RUN apk update && apk upgrade && \
    apk add curl git ripgrep neovim openjdk11 build-base python3 nodejs npm

# start in ~
WORKDIR /root

# get source
RUN git clone https://github.com/clarkshaeffer/dotconfig.git

# copy nvim configs
RUN mkdir -p .config/nvim && cp -r dotconfig/* .config/nvim
RUN mv dotconfig .dotconfig
RUN mv .dotconfig/sh/ ./.sh/
RUN chmod +x .sh/*

# create sh aliases in .profile
RUN touch .profile
RUN echo 'alias lazy="nvim /root/.config/nvim/lua/clark/lazy.lua"' >> .profile
RUN echo 'alias vim="nvim"' >> .profile
RUN echo 'alias :q="exit"' >> .profile
RUN echo 'alias cellfps="sh /root/.sh/cellularfps.sh"' >> .profile

# source .profile aliases
ENV ENV="/root/.profile"

# open shell, no `run` commands needed
CMD [ "sh" ]

# `run` parameters: `-it` for interactive
