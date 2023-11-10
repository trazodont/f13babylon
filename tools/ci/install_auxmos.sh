#!/usr/bin/env bash
set -euo pipefail

source dependencies.sh

mkdir -p "$HOME/BYOND/bin"
wget -O "$HOME/BYOND/bin/libauxmos.so" "https://github.com/${AUXMOS_REPOSITORY}/releases/download/${AUXMOS_VERSION}/libauxmos.so"
chmod +x "$HOME/BYOND/bin/libauxmos.so"
ldd "$HOME/BYOND/bin/libauxmos.so"
