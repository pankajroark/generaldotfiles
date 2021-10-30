pushd $(dirname $0)
for f in $(ls ./into_bashrc); do
  source ./into_bashrc/$f
done
popd
