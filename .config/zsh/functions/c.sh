#!/usr/bin/env bash

c() {
    if [ -z "$1" ]; then
        code .
    else
        code "$1"
    fi
}
