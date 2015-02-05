# Proxy-Settingfiles
![Screenshot](/Proxy-Settingfiles.png)

# 適用される範囲
* apt-get
* curl
* git
* wget
* yum

# 準備
```bash
$ git clone https://github.com/tetsuya00/Proxy-Settingfiles.git ~/.proxy
$ git config --global include.path "~/.gitconfig.proxy"
```

あとはset_proxy.shとunset_proxy.sh内の`ADRESS:PORT`を書き換えれば準備完了です

# 使い方
```bash
$ source ~/.proxy/set_proxy.sh
$ source ~/.proxy/unset_proxy.sh
```
# おまけ
以下のコマンドを実行するとプロキシを設定するときは`sp`、プロキシを解除するときは`usp`で変更できるようになります。
```bash
$ alias sp="source ~/.proxy/set_proxy.sh"
$ alias usp="source ~/.proxy/unset_proxy.sh"
```
