#! /bin/bash
cp $(dirname $0)/dot_kubectlrc ~/dot_kubectlrc
echo "source ~/dot_kubectlrc" >> ~/.bashrc
