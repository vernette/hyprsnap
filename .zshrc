export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gozilla"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions zsh-history-substring-search auto-notify)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias lf=lfrun
alias ls=lsd
alias wayconf="$EDITOR ~/.config/waybar/config"
alias waymoduleconf="$EDITOR ~/.config/waybar/modules.json"
alias waystyleconf="$EDITOR ~/.config/waybar/style.css"
alias zshconf="$EDITOR ~/.zshrc && source ~/.zshrc"
export ANDROID_HOME="$HOME/opt/android/sdk"
export ANDROID_SDK_ROOT="$HOME/opt/android/sdk"
# export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"
# export JAVA_HOME="/usr/lib/jvm/java-21-openjfx"
export LIBINPUT_IGNORE_DEVICE="1"

(cat ~/.cache/wal/sequences &)
export PATH=/home/vernette/.local/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/vernette/.cargo/bin
export AUTO_NOTIFY_THRESHOLD=20
export AUTO_NOTIFY_TITLE="Hey! '%command' has just finished"
export AUTO_NOTIFY_BODY="It completed in %elapsed seconds"
export GPG_TTY=$(tty)
export WAYLAND_DISPLAY=wayland-1

[[ -z $(command -v arTTY) ]] || arTTY
eval "$(zoxide init --cmd cd zsh)"
