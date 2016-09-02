#!/bin/zsh

fpath=($fpath ${0:A:h}/autoload(N-/)) && autoload -Uz pctl
