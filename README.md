# Overview
Proxy setting script

# Installation
```zsh
% git clone https://github.com/ytet5uy4/pctl.git /path/to/dir
% echo 'fpath=($fpath /path/to/dir(N-/)) && autoload -Uz pctl' >> ~/.zshrc
```

# Configuration
```zsh
% echo 'export PROXY_ADDRESS=proxy.example.com PORT=8080' >> ~/.zshenv
% sudo visudo
Defaults env_keep += "http_proxy https_proxy"
```

# License
Copyright (c) 2015 ytet5uy4  
Released under the MIT License, see **[LICENSE.md]**.

[LICENSE.md]: //github.com/ytet5uy4/pctl/blob/master/LICENSE.md
