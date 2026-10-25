# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_BUNDLE_FILE="$HOME/.config/homebrew/Brewfile"

# Environment
if command -v nvim >/dev/null 2>&1; then
  export VISUAL=nvim
else
  export VISUAL=vim
fi
export EDITOR=$VISUAL
export DO_NOT_TRACK=1

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

# PATH (later entries take precedence)
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=/opt/homebrew/lib/ruby/gems/4.0.0/bin:$PATH
fi
if [ -d "/opt/homebrew/opt/python/libexec/bin" ]; then
  export PATH=/opt/homebrew/opt/python/libexec/bin:$PATH
fi
export PATH="$HOME/.local/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# History
HISTFILE="${XDG_STATE_HOME}/zsh/history"
HISTSIZE=100000
SAVEHIST=100000
setopt append_history share_history hist_ignore_all_dups hist_ignore_space extended_history

# Completion (regenerate dump once per day, skip validation otherwise)
autoload -Uz compinit
_zcompdump="${XDG_CACHE_HOME}/zsh/zcompdump"
if [[ -n ${_zcompdump}(#qN.mh+24) ]]; then
  compinit -d "$_zcompdump"
else
  compinit -C -d "$_zcompdump"
fi
unset _zcompdump

# Aliases
[ -f ~/.aliases ] && source ~/.aliases

# Tools
command -v fzf >/dev/null 2>&1 && source <(fzf --zsh)
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
eval "$(fnm env --use-on-cd --shell zsh)"

# Secrets
[ -f ~/.secrets ] && source ~/.secrets

# Prompt
eval "$(starship init zsh)"
