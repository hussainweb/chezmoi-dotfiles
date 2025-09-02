#!/bin/sh

# -e: exit on error
# -u: exit on unset variables
set -eu

# Install Homebrew only on macOS
if [ "$(uname -s)" == "Darwin" ] && [ ! "$(command -v brew)" ]; then
	echo 'Installing Homebrew...'
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo '==================='
	echo 'Homebrew installed.'
	echo '==================='
	echo 'Restart this shell to have the changes take effect.'
	exit
fi

if ! chezmoi="$(command -v chezmoi)"; then
	echo "Installing chezmoi to '${chezmoi}'" >&2
	brew install chezmoi
fi

# POSIX way to get script's dir: https://stackoverflow.com/a/29834779/12156188
script_dir="$(cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P)"

set -- init --apply --source="${script_dir}"

echo "Running 'chezmoi $*'" >&2
# exec: replace current process with chezmoi
exec "$chezmoi" "$@"
