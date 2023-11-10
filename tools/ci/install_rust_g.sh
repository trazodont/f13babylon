#!/usr/bin/env bash
set -euo pipefail

source dependencies.sh

git clone https://github.com/tgstation/rust-g
cd rust-g
git checkout "$RUST_G_VERSION"
rustup target add i686-unknown-linux-gnu
cargo build --release --target i686-unknown-linux-gnu

cp target/release/librust_g.so "$HOME/BYOND/bin/librust_g.so"
ldd "$HOME/BYOND/bin/librust_g.so"
