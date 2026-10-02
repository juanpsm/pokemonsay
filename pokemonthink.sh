#!/bin/sh

#
# Call pokemonsay with the think option.
#

"$(dirname "$(readlink -f "$0")")/pokemonsay.sh" --think "$@"
