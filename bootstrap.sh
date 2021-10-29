#! /bin/bash
cp $(dirname $0)/dot_kubectlrc ~/dot_kubectlrc
cp $(dirname $0)/dot_bashrc ~/dot_bashrc
echo "source ~/dot_kubectlrc" >> ~/.bashrc
echo "source ~/dot_bashrc" >> ~/.bashrc

