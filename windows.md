### [README](README.md)

## Windows side

- Update the windows registry to hide shortcut arrows.
  - Under `HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows/CurrentVersion/Explorer` create a new key called `Shell Icons` and add a new value of `29: `PATH/TO/Blank.ico`
- Window's built in Terminal has come a long ways.
  - TODO: CREATE GUIDE FOR CONFIGS AND THEMES.
  - Theme https://github.com/edurojasr/Windows-Terminal-Night-Owl-Theme
  - After installing the fonts you want (how-to below), go to the profile and set the font.
- If using Hyper, update Hyper and its settings with the set of windows configs.
  - Copy over .hyper.js configs to `~/{user}/AppData/Roaming/Hyper`
  - Note the `hypercwd` plugin is not supported and does not work with WSL.
  - Notable differences:
    - Sets Hyper to use WSL on launch.
    - Adds `hyper-pane` and `hyper-night-owl` theme.
- Follow instructions [here](https://learn.microsoft.com/en-us/windows/wsl/install) to install WSL2
  - Note `wsl --install` will install ubuntu by default. If you would like a different distro, read the instructions further to pick your distro.
  - Follow prompts, but it will expect you to `reboot`.
- Install [Rancher Desktop](https://rancherdesktop.io/)
- Install [Nerd Fonts](https://www.nerdfonts.com/)
  - Directly downoload [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip).
  - Or peruse and find the font you want from [here](https://www.nerdfonts.com/font-downloads).
  - Once downloaded, unzip and double click all font you want to install. 
  ```bash
  # After doing a shallow clone (Read through the Nerdfonts README)
  $ .\install.ps1 FiraCode
  ```

  - Refer to [link](https://www.sharepointdiary.com/2014/03/fix-for-powershell-script-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system.html) to give powershell the ability to run the install script if permission issues arise.

### Other Windows Apps and tools

- Install [PowerToys](https://github.com/microsoft/PowerToys)
  - Use this to configure keybindings such as `ctl+space` to emulate mac keybindings.

## Linux Side

- Make a directory for your projects at `~/home`.
  - Creating anything from /mnt loses performance.
- [Generate a SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- Install git.

  - Set user name and email

  ```bash
  git config --global user.name "username"

  git config --global user.email "email"
  ```

  - Set up gpg keys

  ```
  gpg --full-generate-key
  git config --global user.signingkey <key>
  git config --global commit.gpgsign true
  ```

  - Set main as your default branch globally.

  ```bash
  git config --global init.defaultBranch main
  ```

### Customize Terminal

- Install ZSH if its not already installed. Do not bother setting up zsh the first time.

  ```bash
  zypper in zsh
  ```

- Install Oh My Zsh. This will prompt to set zsh as the default shell.

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

  - Update the theme [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

- Once installed, add keychain and add to zsh

  ```bash
  # Install keychain
  sudo zypper in keychain
  # Add this to the .zshrc file
  eval `keychain --quiet --eval --agents ssh id_ed25519`
  ```

- Install libicu to use marksman in nvim.
  `zypper in libicu`

### Local Langs

- Install GCC. This will help with all things compiling/building.

  ```bash
  sudo zypper in gcc
  ```

- Node

  - Install node using nvm

  ```bash
  # Install nvm
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

  # Install node
  nvm install node
  ```

- Rust

  - Use [Rustup](https://rust-lang.github.io/rustup/installation/other.html) to manage versions

  ```bash
  curl https://sh.rustup.rs -sSf | sh
  ```

- Bun

  - Use [Bun's github page installation guide](https://github.com/oven-sh/bun)

- Zig
  - Use [ZVM](https://github.com/tristanisham/zvm) to manage zig versions. If you have any other zig/zls versions installed you must remove them first.
