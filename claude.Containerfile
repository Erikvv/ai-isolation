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

RUN npm install -g @anthropic-ai/claude-code

RUN useradd -m -s /bin/bash claude
WORKDIR /home/claude

# install tools specifically for the project
RUN pacman -S --noconfirm python

USER claude

ENTRYPOINT ["claude", "--dangerously-skip-permissions"]
