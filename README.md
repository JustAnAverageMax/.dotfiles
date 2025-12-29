# Dotfiles

Configuration files for local development environments, managed using [GNU Stow](https://www.gnu.org/software/stow/).

This repository utilizes GNU Stow to manage symbolic links. This approach allows configuration files to be stored in a centralized version-controlled directory while being linked to their appropriate locations in the home directory.

## Prerequisites

To use this configuration, `git` and `stow` are required.

**macOS (Homebrew):**
```bash
brew install stow git
```

**Ubuntu / Debian:**
```bash
sudo apt update && sudo apt install stow git
```

**Arch Linux:**
```bash
sudo pacman -S stow git
```

## Installation

Clone the repository to the home directory. The standard location is `~/.dotfiles`.

```bash
git clone [https://github.com/JustAnAverageMax/.dotfiles.git](https://github.com/JustAnAverageMax/.dotfiles.git) ~/.dotfiles
cd ~/.dotfiles
```

## Usage

### Structure

Directories in this repository represent "packages" that can be stowed independently. For example, the `zsh` directory contains configuration files for the Z shell.

### Applying Configurations

To create symbolic links for a specific package, run the `stow` command followed by the directory name from within the `.dotfiles` folder.

**Example:**
To apply configurations for `zsh`:

```bash
stow zsh
```

This command creates a symbolic link in the parent directory (usually `~/`) pointing to the files inside `.dotfiles/zsh/`.

To apply all configurations at once:

```bash
stow *
```

### Removing Configurations

To remove the symbolic links for a specific package:

```bash
stow -D zsh
```

### Handling Conflicts

If a configuration file already exists in the target location (e.g., an existing `.zshrc`), Stow will abort to prevent overwriting. To resolve this, rename or delete the existing file before running `stow`.

```bash
mv ~/.zshrc ~/.zshrc.bak
stow zsh
```
