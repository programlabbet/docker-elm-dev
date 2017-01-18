#!/bin/bash
#
# Maintainer: Anders Hansson <anders@programlabbet.se>
#
# (C)Copyright Programlabbet AB, 2016. All rights reserved.

# Initial application sync
/sync.sh false

# Install Elm and Node dependencies
yarn install

# Start synchronizing the application in the background
/sync.sh true &

# Clean elm-stuff because there exists a bug that prevents projects to build
# if the elm-stuff has been corrupted by package definition changes and/or
# other unintuitive changes.
#
# Better safe than sorry - we now completely clean the elm-stuff folder from
# previous build residues. It will take a bit longer but it will work 100% of
# the time which is actually a much better outcome :-)
rm -rf /app-sync/elm-stuff

# Start Brunch web server
yarn start
