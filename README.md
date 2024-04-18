# AstroNvim Template

My [AstroNvim](https://astronvim.com/) configuration, targeted mainly at Python and Go development.
## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```


#### Clone the repository

```shell
git clone https://github.com/fabiofortkamp/astroconfig ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## Local configuration
Configuration you put under `lua/local.lua` is loaded, but this file is not under version control. Use this file to
add *local* configuration, or sensitive config that you do not want to share publicly.
