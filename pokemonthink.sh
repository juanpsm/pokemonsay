#!/bin/sh

#
# Call pokemonsay with the think option.
#

# Resolve the real script directory, following symlinks (portable: no readlink -f).
script="$0"
while [ -L "$script" ]; do
	link="$(readlink "$script")"
	case "$link" in
		/*) script="$link" ;;
		*) script="$(dirname "$script")/$link" ;;
	esac
done
script_dir="$(cd "$(dirname "$script")" && pwd)"
"$script_dir/pokemonsay.sh" --think "$@"
