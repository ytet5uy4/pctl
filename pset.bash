#!/bin/bash
case "$1" in
    "-s" | "--set" )
        if [ -n $http_proxy ] && [ -n $https_proxy ] && [ -e ~/.gitconfig.proxy ]; then
            echo "既に設定されています"
        else
            printf "Setting proxy..."
            git config -f ~/.gitconfig.proxy --add url.https://github.com/.insteadOf git@github.com:
            git config -f ~/.gitconfig.proxy --add url.https://github.com/.insteadOf git://github.com/
            if [ -f ~/.proxy/adress_and_port ]; then
                ADRESS_AND_PORT=$(cat ~/.proxy/adress_and_port)
                export http_proxy="http://${ADRESS_AND_PORT}/"
                export https_proxy="https://${ADRESS_AND_PORT}/"
                echo -e "\033[1;36mdone\033[0;39m"
            else
                echo -e "\033[1;31merror\033[m"
                echo "アドレスとポートが設定されていません"
            fi
        fi
        ;;
    "-u" | "--unset" )
        if [ -z $http_proxy ] && [ -z $https_proxy ] && [ ! -e ~/.gitconfig.proxy ]; then
            echo "既に解除されています"
        else
            printf "Unsetting proxy..."
            rm -f ~/.gitconfig.proxy >/dev/null 2>&1
            unset http_proxy
            unset https_proxy
            echo -e "\033[1;36mdone\033[0;39m"
        fi
        ;;
    "-h" | "--help" )
        echo "使用法: pset [引数]             "
        echo "                                "
        echo "引数:                           "
        echo "  -s, --set     プロキシを設定  "
        echo "  -u, --unset   プロキシを解除  "
        echo "  -h, --help    ヘルプを表示する"
        echo
        ;;
    -* )
        echo "pset: 未知の引数です -- '$(echo $1 | sed 's/^-*//')'"
        echo -e "詳細な情報は 'pset --help'\n"
        ;;
    * )
        echo -e "\033[1;31mError\033[m"
        echo -e "詳細な情報は 'pset --help'\n"
        ;;
esac
