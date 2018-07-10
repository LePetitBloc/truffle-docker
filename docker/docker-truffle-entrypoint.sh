#!/bin/sh
set -e

if [ ! -f truffle.js ]; then
    rm .gitkeep
	truffle init
	mv -f /tmp/truffle.js ./truffle.js
fi

exec docker-entrypoint
