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

# Start Brunch web server
yarn start
