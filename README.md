dotvim
======
Create symbolic link:

ln -s ~/.vim/vimrc ~/.vimrc # if you have .vim/vimrc

Install and update:

cd ~
git clone http://github.com/manoevis/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update

Upgrade all submodule plugins:

git submodule foreach git pull origin master
