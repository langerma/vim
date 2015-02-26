# vim
vim config and modules

# installing
cd ~
git clone http://github.com/langerma/vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update

enjoy!

#upgrading

cd ~/.vim
git submodule foreach git pull origin master
