#!/usr/bin/env bash

git submodule update --init --recursive

function pull {
  (
    echo -e "\033[1;34m--- $2 ---\033[0m" && \
    cd $2 && \
    git fetch --all && \
    git checkout $1 && \
    git pull origin HEAD
  )
}

pull master roq-ansible 

echo -e "\033[1;32mDone!\033[0m"
