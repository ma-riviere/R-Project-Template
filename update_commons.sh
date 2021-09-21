#!/usr/bin/env bash

git submodule update --init --recursive
git submodule foreach git fetch
git submodule update --remote --merge