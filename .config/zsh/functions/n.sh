#!/usr/bin/env bash

n() {
    if [ -z "$1" ]; then
        nvim .
    else
        nvim "$1"
    fi
}
