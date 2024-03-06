### [README](README.md)

## Windows side

- Terminal [Hyperjs](https://hyper.is/)
  - Swap out for [Warp](https://www.warp.dev/) when available for windows
- Follow instructions [here](https://learn.microsoft.com/en-us/windows/wsl/install) to install WSL2
  - Note `wsl --install` will install ubuntu by default. If you would like a different distro, read the instructions further to pick your distro.
  - Follow prompts, but it will expect you to `reboot`.
- Install [Rancher Desktop](https://rancherdesktop.io/)
- IDE
  - [VS Code](https://code.visualstudio.com/)
  - Jetbrains works great, but does not currently have a WSL CLI launch command. Install if you don't mind running IDE from windows and linking to WSL after the fact.
    - [Jetbrain Toolbox](https://www.jetbrains.com/toolbox-app/)
    - Use the toolbox to install IDEA or Fleet.
- Install [Nerd Fonts](https://www.nerdfonts.com/)

  - Clone and run install scripts for powerline fonts. [Github](<(https://github.com/ryanoasis/nerd-fonts)>)
  - Cloning the whole project is huge. Just install and Firacode. Powerline is patched into that font.
  - Use the table in the README to follow to the actual repo. Name of font is the REPO's name _NOT_ the nice human formatted name.

  ```bash
  # After doing a shallow clone (Read through the Nerdfonts README)
  $ .\install.ps1 FiraCode
  ```

  - Refer to [link](https://www.sharepointdiary.com/2014/03/fix-for-powershell-script-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system.html) to give powershell the ability to run the install script if permission issues arise.

- Update Hyper and its settings.
  - Copy over .hyper.js configs to `~/{user}/AppData/Roaming/Hyper`
  - Note the `hypercwd` plugin is not supported and does not work with WSL.
  - Notable differences:
    - Sets Hyper to use WSL on launch.
    - Adds `hyper-pane` and `hyper-night-owl` theme.

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

- Install the [SpaceShip theme](https://spaceship-prompt.sh/getting-started/)

  - **As of this README version spaceship theme in Linux does not work** Issue with zsh async.
    - [Github Issue to follow for resolution](https://github.com/spaceship-prompt/spaceship-prompt/issues/1330)
  - Current selected theme alternative: [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

- Once installed, add keychain and add to zsh

  ```bash
  # Install keychain
  sudo zypper in keychain
  # Add this to the .zshrc file
  eval `keychain --quiet --eval --agents ssh id_ed25519`
  ```

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
  - The latest stable is generally available through brew
  - [Beta version](https://ziglang.org/download/) precompiled bins and libs are available to download.
    ```
    cp zig to /usr/local/bin
    cp lib to /usr/local/libs/zig
    ```
