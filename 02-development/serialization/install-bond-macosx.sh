#!/bin/bash

# https://www.diycode.cc/projects/Microsoft/bond

brew update

echo "
# Go development - needed for Serializztion Microsoft Bond
export GOPATH=\"${HOME}/.go\"
export GOROOT=\"$(brew --prefix golang)/libexec\"
export PATH=\"$PATH:${GOPATH}/bin:${GOROOT}/bin\"
test -d \"${GOPATH}" || mkdir "${GOPATH}\"
"

brew install \
    cmake \
    ghc \
    cabal-install \
    boost \
    boost-python \

brew install go

# Also a bunch of dev tools!

go get golang.org/x/tools/cmd/godoc

go get github.com/golang/lint/golint



brew install \
    --build-from-source \
    boost-python

export PYTHON_LIBRARY=/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib

cmake .. \
-DPYTHON_LIBRARY=/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib

sudo xcode-select --reset
xcode-select --install
sudo xcode-select --switch /Applications/Xcode.app
sudo xcode-select --switch /Library/Developer/CommandLineTools
sudo softwareupdate -ia --verbose
sudo xcodebuild -license

cabal update
cabal install happy


git clone --recursive https://github.com/Microsoft/bond.git
cd bond
mkdir build
cd build
cmake ..
make
cmake -G Xcode ..

make --jobs 8 check

sudo make install
