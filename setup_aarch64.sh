#!/usr/bin/env bash

# install gcc and libc for aarch64 cross-compilation
pacman -S aarch64-linux-gnu-gcc

# install rust target and toolchain for aarch64
rustup target add aarch64-unknown-linux-gnu

# add this to .cargo/config.toml
[target.aarch64-unknown-linux-gnu]
linker = "aarch64-linux-gnu-gcc"            # linker to use
runner = "…"            # wrapper to run executables
rustflags = ["…", "…"]  # custom flags for `rustc`
