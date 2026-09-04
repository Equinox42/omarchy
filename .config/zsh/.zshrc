# =========================================================
# History
# =========================================================

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# =========================================================
# Shell behaviour
# =========================================================

setopt NOBEEP
setopt NUMERIC_GLOB_SORT  # sort file10 after file9, not after file1

# =========================================================
# Completion
# =========================================================

# Load completion system
autoload -Uz compinit

# Initialize completion with cached metadata file
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# Enable interactive completion menu selection
zstyle ':completion:*' menu select

# Make completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # lowercase input matches upper and lower

# =========================================================
# Initialize tools
# =========================================================

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# =========================================================
# Fuzzy finder
# =========================================================

if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

# =========================================================
# Configuration files
# =========================================================

# fzf configuration
source "$ZDOTDIR/fzf.zsh"
# aliases configuration
source "$ZDOTDIR/aliases.zsh"
# bindings configuration
source "$ZDOTDIR/bindings.zsh"
# plugins configuration
source "$ZDOTDIR/plugins.zsh"
# colors configuration
source "$ZDOTDIR/colors.zsh"
