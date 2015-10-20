# My neovim config
## install
### linux
#### manual
```bash
cd
git clone git@github.com:neovim/neovim.git
cd neovim
make
make install
```
#### distro specific
Some distro have a way to install neovim using their package manager, report to doc.
https://github.com/neovim/neovim/wiki/Installing-Neovim
### mac os x
```bash
brew tap neovim/neovim
brew install --HEAD neovim
```
## add my config
### get the config
```bash
cd
git clone git@github.com:geam/config_neovim.git .config_neovim
ln -sf .config_neovim .nvim
```
### install the packages
Start neovim
```bash
nvim
```
Then use the command
```vim
:PlugInstall
```
