"@" (zsh-at)
============

A zsh plugin helps you quickly jump to the working directory of other zsh sessions.

Preview
-------

![preview](preview.gif)

Installation
------------

### Oh My Zsh

1. Clone this repository to `$ZSH_CUSTOM/plugins`:

```
git clone https://github.com/fanzeyi/zsh-at.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-at"
```

2. Enable this plugin in your `~/.zshrc`:

```
plugins=(... zsh-at ...)
```

### antigen

```
antigen bundle fanzeyi/zsh-at
```

### Manual

1. Clone this repository to some directory, e.g. `~/.zsh`

```
git clone https://github.com/fanzeyi/zsh-at.git "~/.zsh/zsh-at"
```

2. Add the following to your `.zshrc`:

```
source ~/.zsh/zsh-at/zsh-at.zsh
```

License
-------

MIT
