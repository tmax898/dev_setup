### [README](README.md)

## Mac setup

This is more straightforward since we don't need the subsystem crossover hoopla.

## Install

### Software

Preference is to install through DMGs and avoid going through the app store.

- Rectangle - Window manager
- Raycast - Spotlight replacement
- Chrome - Browser

#### Communication tools

- Discord
- Slack

### Tech stuff

- [Install brew](https://docs.brew.sh/Installation)
- [Install Hyper](https://hyper.is/)
- [Install VS Code](https://code.visualstudio.com/download)
  - Extensions:
    - Nightowl - theme
    - rust
    - zig
    - eslint
    - prettier
    - code spell check
- Install Nerdfonts

  - "Hack Nerd Font" for terminal p10k

    `brew install font-hack-nerd-font`

- [Install Oh my Zsh](https://ohmyz.sh/)
- [Install nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)

  - Use it to install node

    `nvm install node`

- [Bunjs](https://bun.sh/)
- Zig
  - The latest stable is generally available through brew
  - [Beta version](https://ziglang.org/download/) precompiled bins and libs are available to download.
    ```
    cp zig to /usr/local/bin
    cp lib to /usr/local/libs/zig
    ```
  - When running zig the first time, a prompt may appear that prevents zig from running. Go to System Setting -> Privacy and Security and allow it.
- [Rust](https://www.rust-lang.org/tools/install) - As of this writing, use rustup to manager installations and versions.

## Setup

Other setup items to polish off the the dev experience.

- Setup ssh keys
  - `ssh-keygen -t ed25519 -C "email"`
  - Add to keychain `ssh-add --apple-use-keychain ~/.ssh/id_ed25519`
- Setup global git

  ```
  git config --global user.name "username"

  git config --global user.email "email"
  ```

- Setup hyper configs

  - Copy the hyper configs included and modify the shell settings back to being defaults for mac.

- Setup shell themes
  - Use [oh my zsh to install the p10k theme.](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)
