# pset
![Screenshot](/pset.png "Screenshot")

# 適用される範囲
以下のコマンドでかつインストールしたユーザー内でしか適用されません。(suやsudoなどを使ってユーザーを切り替えてしまうと適用されません。)
* apt-get
* curl
* git
* wget
* yum

# 準備
以下のコマンドを実行してください。
`ADRESS:PORT`の部分は自分の設定と置き換えて実行してください。

```bash
$ git clone https://github.com/ytet5uy4/pset.git ~/.proxy
$ git config --global --add include.path "~/.gitconfig.proxy"
$ echo "alias pset='source ~/.proxy/pset.bash'" >> ~/.${SHELL##*/}rc
$ echo "ADRESS:PORT" > ~/.proxy/adress_and_port
```

# 使い方
プロキシを設定する時
```bash
$ pset -s
```
プロキシを解除する時
```bash
$ pset -u
```
