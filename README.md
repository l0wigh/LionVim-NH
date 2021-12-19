# LionVim-NH

![Screenshot](https://github.com/L0Wigh/LionVim-NH/nh.png)

This is a Kali Nethunter compatible version of LionVim.

Some of the LionVim features might be buggy, but most of the tools should work (even the lsp stuff)

I will probably not really modify anything on this repo since I'm not coding on Nethunter very often, but I'll try to keep it working nicely.

# Missing stuff from the original LionVim

Telescope since it needs neovim 0.6 which is currently not working on Nethunter

Feline and barbar. For some reason it just crash

Which-key setup is not accurate from what LV-NH is able to do. Might show some errors some times

# Essential Informations

This is a very customized Nvim configuration. It will probably not be nice for most of the peoples.

I don't think I'll take any PR, issues, or enhancement stuff.

This repo is mainly here for me, and to help peoples to see how to configure nvim with modern plugins and lua files.

The installer is (for now) really simple and can't be used for a full install.

Requirements :

* Nvim 0.5.0 or higher
* yarn / npm
* ripgrep
* python3-venv
* git

# What's inside the configuration ?

LSP support with :

- lspconfig
- lsp-installer
- coq.nvim (yeah, not nvim-cmp)
- treesitter
- lsp-colors

UI with :

- Dashboard

Workflow tools :

- Undotree
- Nvimtree
- Which-key

and probably some other plugins

Vim configuration :

- numbers + relative numbers
- true colors
- 4 chars long hard tabs
- no swap files, undo folder (~/.config/lionvim/undodir)
- no wrap
- transparent background
- the most important setup : jklm instead of hjkl (because french keyboard) 
- and other stuff...

# Will it broke my nvim install ?

It should not broke your nvim installation but be carefull, some plugins might be installed outside my config folder like dashboard.

Never try this config with backing up your pervious nvim stuff.
