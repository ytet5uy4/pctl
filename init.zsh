#!/bin/zsh

fpath=($fpath $0:a:h/autoload(N-/)) && autoload -Uz pctl
