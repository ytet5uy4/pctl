# pctl - zsh plugin for proxy

[Overview](#overview) |
[Installation](#installation) |
[Configuration](#configuration) |
[License](#license)

[![license-badge]][license-link]
[![release-badge]][release-link]

## Overview

This is zsh plugin to toggle the environment variables of proxy.

![screenshot]

## Installation

You can use zplug to install pctl.
Add the following to your `.zshrc`:

```zsh
zplug 'ytet5uy4/pctl'
```

## Configuration

Add the following to your `.zshrc`:

```zsh
export PROXY_ADDRESS=proxy.example.com PORT=8080
```

To keep the environment variables of proxy when using `sudo`,
append the following to `/etc/sudoers` via `sudo visudo`:

```zsh
Defaults env_keep += "http_proxy https_proxy"
```

## License

Copyright (c) 2015 ytet5uy4

Released under the MIT License, see **[LICENSE.md][license-link]**.

[screenshot]: https://raw.githubusercontent.com/wiki/ytet5uy4/pctl/screenshot.png
[release-link]: https://github.com/ytet5uy4/pctl/releases/latest
[release-badge]: https://img.shields.io/github/release/ytet5uy4/pctl.svg?style=flat-square
[license-link]: LICENSE.md
[license-badge]: https://img.shields.io/github/license/ytet5uy4/pctl.svg?style=flat-square
