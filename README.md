# Development environment setup

I put most of my dotfiles config stuff here. I try keeping as much up to date as I can (even though I usually update them when I switch to a new machine). Feel free to open an issue if you got any suggestions, questions, etc...

Since Pop!_OS is the distro I have used for most of the time, I have a script that automates the post-installation setup. It includes installing essential packages, configuring settings, and setting up some development tools (it's [here](./pop_os/postinstall.sh)). But it's not completely automated for all the things I use.

## Node.js

Currently using [`fnm`](https://github.com/Schniz/fnm)

```sh
curl -fsSL https://fnm.vercel.app/install | bash
```

Then corepack to install [`pnpm`](https://pnpm.io/installation)

```bash
npm install --global corepack@latest
```

```sh
corepack enable
corepack prepare pnpm@latest --activate
```

## Docker

1. Install [Docker engine and Docker Compose](https://docs.docker.com/engine/install/)
2. Follow [post-install](https://docs.docker.com/engine/install/linux-postinstall/) steps
3. (optional) Add [podman](https://podman.io/) to manage containers, pods and images

## Install GitHub CLI

<https://github.com/cli/cli/blob/trunk/docs/install_linux.md>
