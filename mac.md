### [README](README.md)

## Mac setup

This is more straightforward since we don't need the subsystem crossover hoopla.

## Install

### Software

Preference is to install through DMGs and avoid going through the app store.

- [Ghostty](https://ghostty.org/) - Zig based terminal
- Rectangle - Window manager
- Raycast - Spotlight replacement
- [Arc](https://arc.net/) - AI enabled browser
- Go to Keyboard settings and increase the key repeat rate to the fastest to help Neovim feel better.

### Tech stuff

- [Install brew](https://docs.brew.sh/Installation)

- Install Nerdfonts

  - "Hack Nerd Font" for terminal p10k

    `brew install font-hack-nerd-font`

- [Install Oh my Zsh](https://ohmyz.sh/)
- [Install nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)

  - Use it to install node

    `nvm install node`

- [Bunjs](https://bun.sh/)
- Zig
  - Use [ZVM](https://github.com/tristanisham/zvm). You must remove other versions of zig before zvm will work.
- [Rust](https://www.rust-lang.org/tools/install) - As of this writing, use rustup to manager installations and versions.
- Go - `brew install go`
  - Golang can manage versions itself.
- Install Docker and Rancher. Don't install Docker studio, do everything through Rancher
- Install K9s to manager Kube

## Setup

Other setup items to polish off the the dev experience.

- Setup ssh keys

  - `ssh-keygen -t ed25519 -C "email"`
  - Add to keychain `ssh-add --apple-use-keychain ~/.ssh/id_ed25519`
  - Add the following to `~/.ssh/config`

    ```
      Host *.github.com
          UseKeychain yes
          AddKeysToAgent yes
          IdentityFile ~/.ssh/id_ed25519
    ```

- Setup global git

  ```
  git config --global user.name "username"

  git config --global user.email "email"
  ```

- Setup and sign commits

  - Install either
    - `brew install gnupg`
    - [GPG Tools](https://gpgtools.org/)
  - Create and add GPG key to github.
  - Setup commits globally to be signed.

    ```
    git config --global user.signingkey <your key>
    git config --global commit.gpgsign true
    ```

- Setup hyper configs

  - Copy the hyper configs included and modify the shell settings back to being defaults for mac.

- Setup shell themes

  - Use [oh my zsh to install the p10k theme.](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)

- Remove login prompts with `touch ~/.hushlogin`
