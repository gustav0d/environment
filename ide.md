# Neovim

## TODO: Update this

- [Neovim](https://neovim.io/) is a hyperextensible [[Vim]]-based text editor.

## Installation

### Ubuntu

- If you're using an Ubuntu-based distro, you might need to add the stable ppa from neovim so you can use up-to-date features (you can also install the unstable ppa as well, just change form `stable` to `unstable`)

```shell
sudo add-apt-repository ppa:neovim-ppa/stable
```

- Install it with `apt`

### Arch

- Install `nvim` and `ripgrep`

```
yes | sudo pacman -S neovim ripgrep wl-clipboard
```

- also install `wl-clipboard` if you're on Wayland

## Setup

- Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins
- If you want to update, run `:Lazy sync`
