#!/usr/bin/env bash
set -euo pipefail

# Termux's executable directory may be omitted from the bridge's minimal PATH.
TERMUX_PREFIX="${PREFIX:-/data/data/com.termux/files/usr}"
if [[ -d "$TERMUX_PREFIX/bin" ]]; then
  PATH="$TERMUX_PREFIX/bin:/system/bin:$PATH"
  export PATH
fi

printf '%s\n' 'JARVIS_TERMUX_EXECUTABLE_OK'
printf 'project=%s\n' 'jarvis-termux-executable-demo-'
printf 'shell=%s\n' "${BASH_VERSION:-unknown}"

if command -v python3 >/dev/null 2>&1; then
  python3 --version
else
  printf '%s\n' 'python3=missing'
  exit 2
fi

if command -v git >/dev/null 2>&1; then
  git --version
else
  printf '%s\n' 'git=missing'
  exit 3
fi

printf '%s\n' 'status=ready'
