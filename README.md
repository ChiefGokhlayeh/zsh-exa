# zsh exa and eza plugin

Small zsh plugin to add useful aliases for [exa](https://github.com/ogham/exa) and its community fork [eza](https://github.com/eza-community/eza).

## What it does

```bash
# Group directories first, show icons, and enable file size color scale
alias ls="${exa_cmd} --group-directories-first --icons --color-scale" # --time-style=iso
alias lt="${exa_cmd} --tree --level=2 --icons" # Show in tree view
alias l='ls -a'                         # Short, all files
alias ld='l -D'                         # Short, only directories
alias ll='ls -lbg --git'                # Long, file size prefixes, grid, git status
alias la='ll -a'                        # Long, all files
alias lC='la --sort=changed'            # Long, sort changed
alias lM='la --sort=modified'           # Long, sort modified
alias lS='la --sort=size'               # Long, sort size
alias lX='la --sort=extension'          # Long, sort extension
```

## What it needs

- zsh
- exa or eza (eza is preferred)
- patched font with glyphs

## Get it

Install exa, for platform specific [installation instructions check here](https://github.com/ogham/exa#installation).
Alternatively install eza by following [these instructions here](https://github.com/eza-community/eza#installation).

You will also need a patched font with icons (glyphs).
I recommend using one of the [nerd-fonts](https://github.com/ryanoasis/nerd-fonts).

### Oh My Zsh

Clone zsh-exa to your `$ZSH_CUSTOM` plugins directory.

```bash
git clone https://github.com/ChiefGokhlayeh/zsh-exa.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-exa
```

Then add zsh-exa to your plugins array in your `.zshrc` file.

```bash
plugins=(.. zsh-exa)
```

### Manual install

Clone zsh-exa and add `source <zsh-exa-dir>/zsh-exa.plugin.zsh` to your `.zshrc` file.

```bash
git clone https://github.com/ChiefGokhlayeh/zsh-exa.git
echo "source "$(pwd)/zsh-exa/zsh-exa.plugin.zsh" >> ~/.zshrc
```
