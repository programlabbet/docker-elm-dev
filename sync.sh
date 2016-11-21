#!/bin/bash

sync_app() {
	rsync -ar --delete  		   \
	      --exclude=.git		   \
	      --exclude=.gitignore     \
	      --exclude=.log		   \
	      --exclude=yarn-error.log \
	      --exclude=.sqlite		   \
	      --exclude=_build 		   \
	      --exclude=deps   		   \
	      --exclude=node_modules   \
	      --exclude=priv/static    \
	      --exclude=public         \
	      --exclude=elm-stuff      \
	      /app/ /app-sync/
}

sync_app_forever() {
	while true; do
		sync_app
		sleep 4
	done
}

if [ "$1" == "true" ]; then
	sync_app_forever
else
	sync_app
fi
