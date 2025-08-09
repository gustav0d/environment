# Development environment setup

I put most of my dotfiles config stuff here. I try keeping as much up to date as I can (even though I usually update them when I switch to a new machine). Feel free to open an issue if you got any suggestions, questions, etc...

Since Pop!_OS is the distro I have used for most of the time, I have a script that automates the post-installation setup. It includes installing essential packages, configuring settings, and setting up some development tools (it's right there: [postinstall.sh](./pop_os/postinstall.sh)). But it's not completely automated for all the things I use.

> [!NOTE]
> Currently using bash but I plan to switch to zsh;
> Text editor: I use `vim` and `neovim` as text editors ([Neovim can also be my IDE](./md/nvim.md)).

## Node.js

Currently using [`fnm`](https://github.com/Schniz/fnm)

```bash
curl -fsSL https://fnm.vercel.app/install | bash
```

Then corepack to install [`pnpm`](https://pnpm.io/installation)

```bash
npm install --global corepack@latest
```

```bash
corepack enable
corepack prepare pnpm@latest --activate
```

## Docker

1. Install [Docker engine and Docker Compose](https://docs.docker.com/engine/install/)
2. Follow [post-install](https://docs.docker.com/engine/install/linux-postinstall/) steps
3. (optional) Add [podman](https://podman.io/) to manage containers, pods and images

## Install GitHub CLI

<https://github.com/cli/cli/blob/trunk/docs/install_linux.md>

## Flatpak

<https://flatpak.org/setup/>

## GUI

- [GUI](./md/gui.md)
- [Desktop Environments and Window Managers](./md/desktop.md)
- [IDEs and editors](./md/ide.md)

## What to try

- https://the.exa.website/
- https://github.com/sharkdp/bat