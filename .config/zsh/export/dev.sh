#!/usr/bin/env bash

export GOPATH="$HOME/.go"
export JAVA_HOME="$HOME/.toolchain/java/jdk-21.0.3/"

export SCALAPATH="$HOME/.local/share/coursier/bin"

export PATH=$PATH:$GOROOT/bin

source "$HOME/.cargo/env"

export ZIGPATH="$HOME/.toolchain/zig-linux-x86_64-0.14.0"
export PATH="$PATH:$ZIGPATH"
