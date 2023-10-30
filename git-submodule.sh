#!/usr/bin/env bash

git submodule add $MODULE_GIT_URL

git clone --recurse-submodules $MODULE_GIT_URL

git submodule update --remote

git submodule update --init --recursive

git pull --recurse-submodules

git diff; git submodule foreach 'git diff'
