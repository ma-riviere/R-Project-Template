#!/usr/bin/env bash

git submodule update --init --recursive
git submodule foreach git checkout .
git submodule foreach git pull origin main
git submodule update --merge