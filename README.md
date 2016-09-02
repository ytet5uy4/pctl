![Screenshot]

# Overview
This is zsh plugin to toggle the environment variables of proxy.

# Installation
## Using zplug
```zsh
% zplug 'ytet5uy4/pctl'
```

## Using git
```zsh
% git clone https://github.com/ytet5uy4/pctl.git /path/to/dir
% echo '. /path/to/dir/init.zsh' >> ~/.zshrc
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

[Screenshot]: https://raw.githubusercontent.com/wiki/ytet5uy4/pctl/screenshot.png
[LICENSE.md]: //github.com/ytet5uy4/pctl/blob/master/LICENSE.md
