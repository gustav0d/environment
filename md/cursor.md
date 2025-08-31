# Cursor IDE

For Windows and MacOS you can simply install it and run it. For Linux based systems you also need to download and install it, but for sake of adding a desktop entry and other stuff, you might want to follow the additional steps below.

## Download and install

> [!NOTE]
> You might want to delete old cursor AppImages from Downloads before running (if you've downloaded multiple versions)
>
> ```bash
> rm -f ~/Downloads/Cursor-*-x86_64.AppImage
> ```

No matter the OS, [download Cursor](https://cursor.com/downloads)

### AppImage additional steps

> [!NOTE]
> I'm using `/opt/Cursor.AppImage` as the installation directory, but you can choose any other directory you prefer.

```bash
sudo rm -f /opt/Cursor.AppImage
sudo mv ~/Downloads/Cursor-*-x86_64.AppImage /opt/Cursor.AppImage
sudo chmod +x /opt/Cursor.AppImage
```

#### Create a desktop entry

Download the Cursor icon from their website

```bash
sudo curl -L https://cursor.com/favicon.svg -o /usr/share/pixmaps/cursor.svg
```

Add a desktop entry

```bash
sudo vim /usr/share/applications/cursor.desktop
```

```bash
[Desktop Entry]
Name=Cursor
Comment=Editor Cursor
Exec=/opt/Cursor.AppImage
Icon=/usr/share/pixmaps/cursor.svg
Type=Application
Categories=Development;Editor;
Terminal=false
```

#### Fix executable permissions

```bash
sudo chmod +x /usr/share/applications/cursor.desktop
```

#### Uninstall Cursor

```bash
sudo rm -f /opt/Cursor.AppImage
sudo rm -f /usr/share/applications/cursor.desktop
sudo rm -f /usr/share/pixmaps/cursor.svg
```

#### Troubleshooting

Reload the desktop environment

```bash
update-desktop-database /usr/share/applications
```

Or if you installed locally:

```bash
update-desktop-database ~/.local/share/applications
```

## Using cursor

You can use some [VSCode extensions](./vscode.md).

- Agent mode: `Ctrl + I`
- Inline: `Ctrl + K`
- Tab autocomplete
