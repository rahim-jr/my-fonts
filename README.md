# My Fonts

A collection of my favorite programming fonts.

## Easy Installation (Recommended)

This repository includes a script to automate the installation process for the current user.

1.  **Clone the repository (if you haven't already):**
    ```bash
    git clone https://github.com/rahim-jr/my-fonts.git
    cd my-fonts
    ```

2.  **Run the installation script:**
    ```bash
    ./install.sh
    ```
The script will handle everything: creating the necessary directories, copying all font files, and updating the system's font cache.

## Manual Installation on Linux

If you prefer to install fonts manually, you can follow these steps.

### 1. Single User Installation

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
