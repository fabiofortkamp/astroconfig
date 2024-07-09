# Fábio Fortkamp's AstroNvim configuration

My [AstroNvim](https://astronvim.com/) configuration

A little context: I'm a Mechanical Engineer turned into a Python developer. This configuration is far from optimized,
but sould be smooth enough to use as a Python IDE targeted at scientific development. 

I also write the occasional Go program or shell script, in addition to Markdown and Quarto documents. 

If all of this seem like your own workflow and you want to learn Neovim without configuring it from scratch,
then this repo might help you.

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

Upon first start, this will download all packages specified in the configuration.
#### Post-installation configuration

- Authenticate Github Copilot with `:Copilot auth`.
- Run `:checkhealth` inside neovim to check for problems, in particular the presence of executables you need to add to your system
  - My accompanying [dotfiles](https://github.com/fabiofortkamp/dotfiles) configuration include all external programs needed


## Features

### Python tools
We use [ruff](https://docs.astral.sh/ruff/) and [basedpyright](https://github.com/DetachHead/basedpyright) as the main development tools.
Open a Python file and you should get diagnostics right away.
### Local configuration
Configuration you put under `lua/local.lua` is loaded, but this file is not under version control. Use this file to
add *local* configuration, or sensitive config that you do not want to share publicly.
