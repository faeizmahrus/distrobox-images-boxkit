#!/bin/sh

# Install VSCode, git
paru -Syu visual-studio-code-bin git
# Install rustup and rust-analyzer
paru -Syu rustup rust-analyzer
# Install C/C++ stuff
paru -Syu base-devel meson ninja clang

# Install and default to the rust stable toolchain
rustup toolchain install stable && rustup default stable