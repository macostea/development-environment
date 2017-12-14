FROM debian:9

RUN apt-get update && \
    apt-get install -y git vim build-essential python3 python3-dev

WORKDIR /root

RUN git clone https://github.com/macostea/dotfiles

RUN cd dotfiles && \
    git submodule init && \
    git submodule update && \
    ln -s /root/dotfiles/vim /root/.vim && \
    ln -s /root/dotfiles/vimrc /root/.vimrc

ENV LANG='C.UTF-8' LC_ALL='C.UTF-8'

VOLUME /root/Developer

