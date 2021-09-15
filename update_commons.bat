git submodule update --init --recursive
cd src/common
git fetch
cd ../..
git submodule update --remote --merge