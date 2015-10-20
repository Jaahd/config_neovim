# My neovim config
## I - Install
### 1 - Linux
#### 1.1 - Manual
```bash
cd
git clone git@github.com:neovim/neovim.git
cd neovim
make
make install
```
#### 1.2 - Distro specific
Some distro have a way to install neovim using their package manager, report to doc.
https://github.com/neovim/neovim/wiki/Installing-Neovim
### 2 - Mac os x
```bash
brew tap neovim/neovim
brew install --HEAD neovim
```
## II - Add my config
### 1 - Get the config
```bash
cd
git clone git@github.com:geam/config_neovim.git .config_neovim
ln -sf .config_neovim .nvim
```
### 2 - Install the packages
Start neovim
```bash
nvim
```
Then use the command
```vim
:PlugInstall
```
### 3 - Add the correct font for the status line
```bash
cd
git clone https://github.com/powerline/fonts temp_fonts
cd temp_fonts
./install.sh
```
The fonts should be installed. If not, check your os documentation for the fonts.
Use one of these font in your terminal emulator.
