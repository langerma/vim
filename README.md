# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# vim
vim config and modules

## installing
```sh
cd ~
git clone http://github.com/langerma/vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```
enjoy!

## upgrading

```sh
cd ~/.vim
git submodule foreach git pull origin master
```
