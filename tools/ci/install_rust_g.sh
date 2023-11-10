#!/usr/bin/env bash
set -euo pipefail

source dependencies.sh

mkdir -p" $HOME/BYOND/bin"
wget -O "$HOME/BYOND/bin/librust_g.so" "https://github.com/tgstation/rust-g/releases/download/$RUST_G_VERSION/librust_g.so"
chmod +x "$HOME/BYOND/bin/librust_g.so"
ldd "$HOME/BYOND/bin/librust_g.so"
