#!/usr/bin/env bash
set -euo pipefail

source dependencies.sh

git clone https://github.com/tgstation/rust-g
cd rust-g
git checkout "$RUST_G_VERSION"

dpkg --add-architecture i386
apt update
apt install zlib1g-dev:i386

rustup target add i686-unknown-linux-gnu
export PKG_CONFIG_ALLOW_CROSS=1
cargo build --release --target i686-unknown-linux-gnu

cp target/release/librust_g.so "$HOME/BYOND/bin/librust_g.so"
ldd "$HOME/BYOND/bin/librust_g.so"
