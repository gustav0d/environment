# Microsoft Windows development setup

> [!NOTE] The steps below require a fresh install of Windows 11, with the crucial updates and drivers already installed
> I download the ISO and Office from <https://github.com/massgravel/Microsoft-Activation-Scripts>

- Update or Install [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)

> [!WARNING]
> DO NOT uninstall Microsoft Edge since it's crucial for Windows stuff

- Choose a debloater to use:
  - LeDragoX: <https://github.com/LeDragoX/Win-Debloat-Tools>
  - Chris Titus': <https://christitus.com/windows-tool/>

## WSL

***Always use WSL2***.

You can install WSL and go with the default Ubuntu distro, or you can install use Arch WSL, which I prefer.

### Arch WSL

#### Download and Install Arch WSL

- Install the latest `zip` file from [ArchWSL releases](https://github.com/yuk7/ArchWSL/releases/latest)

#### Configure the root user

- Add `wheel` group to sudoers

```bash
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
```

- add your user (change `{username}` with your own username)

```bash
useradd -m -G wheel -s /bin/bash {username}
```

- define the password for your user (once again, change your username)

```bash
passwd {username}
```

Now on Windows, where you downloaded the `Arch.zip` from the step [[#Download and Install Arch WSL|before]]

```pwsh
.\Arch.exe config --default-user {username}
```

#### Update distro packages

initialize `pacman` keyring

```bash
sudo pacman-key --init
```

and do the initial setup of the keys with

```bash
sudo pacman-key --populate
```

```bash
sudo pacman -Sy archlinux-keyring
```

```bash
sudo pacman -Syu
```

Install yay

```bash
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
```

#### References

- [ArchWSL Docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/#set-up-the-default-user)
- [WSL2 Setup Com ArchWSL](https://dev.to/dchueri/configurando-o-archlinux-com-wsl-2-para-devs-393n)

## Cool softwares

- [PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/install)
  - quick launcher
  - easier environment variables editing
  - always on top (crop and windows)
  - etc..
- [ModernFlyouts](https://github.com/ModernFlyouts-Community/ModernFlyouts)
  - I use primarily for the lock keys

## Optional if using WSL

- Install [nvm for windows](https://github.com/coreybutler/nvm-windows)
  - install the node version you want (I always install the LTS): `nvm install lts`
- Install [Scoop](https://scoop.sh/)
- Install `gcc` with scoop:  `scoop install gcc`
- Install `neovim` with scoop: `scoop install neovim`
- Install [GnuWin32](https://gnuwin32.sourceforge.net/install.html)

### Setup PATH

- search for `environment variables` on windows search
- look for the `Path`, click to edit it
- add the following paths
  - `C:\Program Files\Neovim\bin`
  - `C:\MinGW\bin`
  - `C:\Program Files (x86)\GnuWin32\bin`
  - others as needed...
  