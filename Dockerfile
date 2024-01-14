FROM alpine:latest
RUN apk update && apk upgrade && \
    apk add curl git ripgrep neovim openjdk11 build-base python3 nodejs npm
WORKDIR /root

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim /root/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN git clone https://github.com/clarkshaeffer/dotconfig.git

RUN mkdir -p .config/nvim && cp -r dotconfig/* .config/nvim
RUN mv dotconfig .dotconfig

RUN touch .profile
RUN echo 'alias packer="nvim /root/.config/nvim/lua/clark/packer.lua"' >> .profile
RUN echo 'alias vim="nvim"' >> .profile
RUN echo 'alias :q="exit"' >> .profile

ENV ENV="/root/.profile"

CMD [ "sh" ]
