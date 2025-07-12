# My Fonts

A collection of my favorite programming fonts.

## Installation on Linux

There are two primary ways to install fonts on Linux: for a single user or for all users system-wide.

### 1. Single User Installation (Recommended)

This method installs the fonts only for the current user and does not require administrative privileges.

1.  **Create a font directory:**
    Open a terminal and create a directory for your fonts if it doesn't already exist. The most common location is `~/.local/share/fonts`.
    ```bash
    mkdir -p ~/.local/share/fonts
    ```
    *Note: Some older systems may use `~/.fonts`. Both locations are valid, but `~/.local/share/fonts` is the modern standard.*

2.  **Copy the fonts:**
    Copy the font files (e.g., `.ttf`, `.otf`) from this repository into the directory you just created. For example, to install the "Fira Code" font:
    ```bash
    cp -r "FiraCode/ttf" ~/.local/share/fonts/
    ```

### 2. System-Wide Installation

This method makes the fonts available to all users on the system but requires administrative (`sudo`) privileges.

1.  **Copy the fonts to the system directory:**
    The standard directory for system-wide fonts is `/usr/local/share/fonts`.
    ```bash
    sudo cp -r "FiraCode/ttf" /usr/local/share/fonts/
    ```

### 3. Update the Font Cache

After copying the fonts, you need to rebuild the system's font cache. This command scans the font directories and makes the new fonts available to all applications.

Run the following command in your terminal:
```bash
fc-cache -f -v
```

Your new fonts should now be installed and ready to use in your applications.
