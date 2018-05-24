#!/bin/sh
set -e

if [ ! -f truffle.js ]; then
    rm .gitkeep
	truffle init
fi

exec docker-entrypoint
