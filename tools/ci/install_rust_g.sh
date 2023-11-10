#!/usr/bin/env bash
set -euo pipefail

source dependencies.sh

git clone https://github.com/tgstation/rust-g
cd rust-g
git checkout "$RUST_G_VERSION"
cargo build --release

cp target/release/librust_g.so "$HOME/BYOND/bin/librust_g.so"
ldd "$HOME/BYOND/bin/librust_g.so"
