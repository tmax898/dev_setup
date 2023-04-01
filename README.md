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
    * Use the toolbox to install IDEA    
