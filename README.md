# My neovim config
## I - Neovim installation
### 1 - Linux
#### 1.1 - Manual
```bash
cd
git clone git@github.com:neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
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
## II - Add my neovim config
### 1 - Get the config
```bash
cd
git clone git@github.com:geam/config_neovim.git .config_neovim
if [[ ! -d "$HOME/.config" ]]; then
	mkdir $HOME/.config
fi
ln -sf .config_neovim .config/nvim
```
You need to check that ~/.config/nvim is the symbolic link you just create. If it's not, delete the dir and recreate the symbolic link
```bash
rm -rf .nvim
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
#### 3.1 Mac os x
On mac os x, you may have an error stating that ~/Library/Fonts doesn't exist, create the dir then relaunch the script
```bash
mkdir ~/Library/Fonts
cd ~/temp_fonts/
./install.sh
```
Then, you need to add the font in your font book, to do so, do the following
```
<command-space>font Book
```
In the font book, create a new lib (right clic, new lib) and add add the font to this library (right clic, add fonts)
### 4 - Set the font in your terminal emulator
#### 4.1 - iTerm on Mac os x
```
<command-o>
```
Édit your config and choose the non-ascii font : you can choose any font that contain "powerline" in it's name and that's it.
#### 4.2 - other term
Same as above but I don't know the way to do it. If you've got an issue, report to this : https://powerline.readthedocs.org/en/latest/installation.html#fonts-installation
### III - Licence
#### autoload/plug.vim
autoload/plug.vim is an asynchronous plugin manager (https://github.com/junegunn/vim-plug), it comes under the MIT licence
#### The rest
The files nvimrc and README.md are under the beer-ware licence.
```
----------------------------------------------------------------------------
"THE BEER-WARE LICENSE" (Revision 42):
<mdelage@student.42.fr> wrote this file. As long as you retain this notice
you can do whatever you want with this stuff. If we meet some day, and you
think this stuff is worth it, you can buy me a beer in return Marc Delage
----------------------------------------------------------------------------
```
