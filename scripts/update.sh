#!/usr/bin/env bash

git submodule update --init --recursive
git submodule foreach --recursive git checkout master
