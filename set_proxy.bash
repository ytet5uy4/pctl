#!/bin/bash
if [ -n "$http_proxy" ] && [ -n "$https_proxy" ] && [ -e ~/.gitconfig.proxy ]; then
    echo "Proxy settings has already done."
else
    printf "Setting proxy..."
    git config -f ~/.gitconfig.proxy http.proxy http://ADRESS:PORT
    git config -f ~/.gitconfig.proxy https.proxy https://ADRESS:PORT
    export http_proxy="http://ADRESS:PORT/"
    export https_proxy="https://ADRESS:PORT/"
    echo -e "\e[1;34mdone\e[m"
fi
