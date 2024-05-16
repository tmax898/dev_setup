### [README](README.md)

## Shared tooling and apps

These are all the cross platform tools to remember to install reguardless of OS.

#### Browser

- Chrome - Better than the default OS, normal use plenty of support, getting sketchier reguarding PII (not that it wasn't already).
- [Brave](https://brave.com) - better privacy. Pick this over firefox or duck.
- [Arc](https://arc.net/downloaded) - Brand new, efficient, buzzworthy.

#### Software

- [Obsidian](https://obsidian.md/download) - Notes
  - Install Git Sync and sync with git repo. This will pull any other plugins as well.
  - If running into GPG issues refer to https://github.com/denolehov/obsidian-git/issues/21

#### Communication tools

- Discord
- Slack

#### Coding Tools

- Insomnia - REST client
  Installations of different langs and sdks will be left in the respective OS guides.
- [Install Hyper](https://hyper.is/) - general use crossplatform terminal. Each OS has alternatives to avoid running an electron apps a terminal.

- Neovim - in-terminal editor. Copy the nvim configs to the root `.config` directory. [Astro](https://docs.astronvim.com) is used as the base. Follow their intial guide to install all other needed deps
  - Alternatively [Install VS Code](https://code.visualstudio.com/download)
    - Extensions should all be included in the nvim config files. The Night Owl theme is imported as a plugin, but the LSP packs are sourced from the community.
      - TODO get a good setup for spell check and grammar.
  - Another alternative is Helix - This still is missing much of what Neovim provides as of the writing of this guide.
    - Follow up with the [Helix Setup](helix.md)
  - Nerdfonts - Each OS will walk through their own setup. Way more complicated than it ever should be to install a font.
