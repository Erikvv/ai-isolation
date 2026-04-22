FROM archlinux:latest

# install generic linux tools
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
        base-devel \
        git \
        curl \
        wget \
        unzip \
        ripgrep \
        fd \
        jq \
        less \
        vim \
        bash \
        which \
        nodejs \
        npm

RUN npm install -g opencode-ai

RUN useradd -m -s /bin/bash opencode
WORKDIR /home/opencode

# install tools specifically for the project
RUN pacman -S --noconfirm python

USER opencode

ENTRYPOINT ["opencode"]
