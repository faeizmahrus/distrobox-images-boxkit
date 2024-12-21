#!/bin/sh

# Install VSCode, git
paru -Syu --skip-review visual-studio-code-bin git
# Install rustup and rust-analyzer
paru -Syu --skip-review rustup rust-analyzer
# Install C/C++ stuff
paru -Syu --skip-review base-devel meson ninja clang

# Install and default to the rust stable toolchain
rustup toolchain install stable && rustup default stable