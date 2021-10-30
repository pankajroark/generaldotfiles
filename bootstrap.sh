#! /bin/bash
pushd $(dirname $0)
# This should match the one in aliases
DOTDIR="$HOME/.me"
mkdir $DOTDIR
cp -rf * $DOTDIR

pushd $DOTDIR
for f in $(ls ./into_bashrc); do
  echo "source $DOTDIR/into_bashrc/$f" >> ~/.bashrc
done
popd

ln -s $DOTDIR/vimrc ~/.vimrc 
ln -s $DOTDIR/gitconfig ~/.gitconfig 
popd
