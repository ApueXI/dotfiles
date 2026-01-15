export MOZ_ENABLE_WAYLAND=1

# Ctrl + Left / Right arrow → move by word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cred/.zshrc'

autoload -U colors && colors
PROMPT='%F{yellow}%n@arch%f %F{blue}%~%f %# '

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Tab completion enhancements
setopt AUTO_MENU
setopt MENU_COMPLETE

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cls='clear'
alias ff='fastfetch'
alias fire='firefox'
alias img='swayimg'

# Can also use ip link
alias nmd='nmcli device'
alias nmdw='nmcli device wifi'
alias nmdwl='nmcli device wifi list'
alias nmdwr='nmcli device wifi rescan'
alias nmdwconn='nmcli device wifi connect' # nmdwconn 'ssid' password 'psww' hidden yes

alias avim="NVIM_APPNAME=nvim_acob nvim"
alias lvim="NVIM_APPNAME=nvim_lazy nvim"
# alias kvim="NVIM_APPNAME=kick-nvim nvim"

# Show sched
alias schd="mdcat /home/cred/.sched/.sched.md"
# alias schd="bat --style=plain --language=markdown --theme='Catppuccin Latte' /home/cred/sched.md"

# To see which mirror list is fast
alias reflector_scr='reflector --sort score --age 48 --ipv4 --protocol https --connection-timeout 30 --latest 16 --verbose --country Japan,Singapore,South_Korea,Philippines'
alias reflector_spd='reflector --sort rate --age 48 --ipv4 --protocol https --connection-timeout 30 --latest 16 --verbose --country Japan,Singapore,South_Korea,Philippines'

export EDITOR=nvim
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
