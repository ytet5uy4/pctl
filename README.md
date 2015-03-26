# pset
![Screenshot](/pset.png "Screenshot")

# 適用される範囲
以下のコマンドでかつインストールしたユーザー内でしか適用されません。(su、sudoなどを使うと適用されません。)
* apt-get
* curl
* git
* wget
* yum

# 準備
```bash
$ git clone https://github.com/j4ve1in/pset.git ~/.proxy
$ git config --global include.path "~/.gitconfig.proxy"
$ echo "alias pset='source ~/.proxy/pset.bash'" >> ~/.${SHELL##*/}rc
```

あとはpset.bash内の`ADRESS:PORT`を書き換えれば準備完了です

# 使い方
プロキシを設定する時
```bash
$ pset -s
```
プロキシを解除する時
```bash
$ pset -u
```
