#!/bin/bash
if [ -z "$http_proxy" ] && [ -z "$https_proxy" ] && [ ! -e ~/.gitconfig.proxy ]; then
    echo "Unsetting proxy has already done."
else
    printf "Unsetting proxy..."
    rm -f ~/.gitconfig.proxy >/dev/null 2>&1
    export http_proxy=""
    export https_proxy=""
    echo -e "\e[1;34mdone\e[m"
fi
