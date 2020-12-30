#!/usr/bin/bash

if [ ! -d "dist" ]; then
    mkdir dist
fi

# Compile
ghc Main.hs -o repl

# Put in dist
mv repl dist/

# Cleanup
rm *.hi *.o
