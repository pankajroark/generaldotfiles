#! /bin/bash
pushd $(dirname $0)
DOTDIR=""$HOME/.me""
mkdir $DOTDIR
cp -rf * $DOTDIR
echo "source $DOTDIR/bashrc" >> ~/.bashrc

ln -s $DOTDIR/vimrc ~/.vimrc 
ln -s $DOTDIR/gitconfig ~/.gitconfig 
popd
