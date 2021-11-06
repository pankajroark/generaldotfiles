#! /bin/bash
pushd $(dirname $0)
# This should match the one in aliases
DOTDIR="$HOME/.me"
rm -rf $DOTDIR
mkdir $DOTDIR
cp -rf * $DOTDIR

pushd $DOTDIR
> ~/.my_bashrc
for f in $(ls ./into_bashrc); do
  echo "source $DOTDIR/into_bashrc/$f" >> ~/.my_bashrc
done

grep -qxF "source ~/.my_bashrc" ~/.bashrc || echo "source ~/.my_bashrc" >> ~/.bashrc
popd

ln -s $DOTDIR/vimrc ~/.vimrc 
ln -s $DOTDIR/gitconfig ~/.gitconfig 
popd
