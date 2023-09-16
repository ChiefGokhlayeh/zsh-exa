# Oh My ZSH - exa/eza aliases plugin

# eza is a community fork of exa and now the default on Arch
exa_cmd='exa'

# Check if exa is installed, give a warning if it isn't and abort
if ! (( $+commands[exa] )); then
  print "zsh-exa-plugin: Warning, exa was not found. Please install exa to use this plugin.." >&2
  return 1
elif (( $+commands[eza] )); then
  exa_cmd='eza'
fi

# Set time to bold
#export EXA_COLORS='da=1;34:gm=1;34'

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

unset exa_cmd
