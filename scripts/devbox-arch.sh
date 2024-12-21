#!/bin/sh

# Install VSCode, git
paru -Syu --noconfirm visual-studio-code-bin git
# Install rustup and rust-analyzer
paru -Syu --noconfirm rustup rust-analyzer
# Install C/C++ stuff
paru -Syu --noconfirm base-devel meson ninja clang

# Install and default to the rust stable toolchain
rustup toolchain install stable && rustup default stable