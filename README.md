# Windows-dev-setup
Stuff to setup windows for development

## Windows side
* Terminal [Hyperjs](https://hyper.is/)
  * Swap out for [Warp](https://www.warp.dev/) when availible for windows 
* Follow instructions [here](https://learn.microsoft.com/en-us/windows/wsl/install) to install WSL2
  * Note `wsl --install` will install ubuntu by default. If you would like a different distro, read the instructions further to pick your distro.
  * Follow prompts, but it will expect you to `reboot`.
* Install [Rancher Desktop](https://rancherdesktop.io/)
* IDE
  * [VS Code](https://code.visualstudio.com/)
  * Jetbrains works great, but does not currently have a WSL CLI launch command. Install if you don't mind running IDE from windows and linking to WSL after the fact.
    * [Jetbrain Toolbox](https://www.jetbrains.com/toolbox-app/)
    * Use the toolbox to install IDEA or Fleet.
* Install [Nerd Fonts](https://www.nerdfonts.com/)
  * Clone and run install scripts for powerline fonts. [Github]((https://github.com/ryanoasis/nerd-fonts))
  * Cloning the whole project is huge. Just install powerline and fira.
  * Use the table in the README to follow to the actual repo. Name of font is the REPO's name *NOT* the nice human formatted name.
  ```
  # After doing a shallow clone (Read through the nerdfonts README)
  $ .\install.ps1 FiraCode
  ```
  * Refer to [link](https://www.sharepointdiary.com/2014/03/fix-for-powershell-script-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system.html) to give powershell the ability to run the install script
* Update Hyper and its settings.
  * Copy over .hyper.js configs to `~/{user}/AppData/Roaming/Hyper`


## Linux Side
* Make a directory for your projects at `~/home`.
  * Creating anything from /mnt loses performance.
* [Generate a SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* Install git.
### Customize Terminal
* Install ZSH if its not already installed. Do not bother setting up zsh the first time.
  ```
  $ zypper in zsh
  ```
* Install Oh My Zsh. This will prompt to set zsh as the default shell.
  ```
  $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
* Install the [SpaceShip theme](https://spaceship-prompt.sh/getting-started/)
* Once installed, add ssh key agent to start .zshrc
```
# Add this to the .zshrc file
eval $(ssh-agent)
```
