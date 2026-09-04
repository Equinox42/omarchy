# ---------------------------
# -- GENERAL --
# ---------------------------

alias ..='cd ..'
compress() { tar -czf "${1%/}.tar.gz" "${1%/}"; }
alias decompress="tar -xzf"
alias ls='eza -l --icons --group --color=always'
alias ll='eza -l --icons --group --color=always'
alias la='eza -la --icons --group --color=always'
alias top='btop'
alias cat='bat'
alias vim='nvim'
alias vi='nvim'
alias grep='rg --color=auto'


# ---------------------------
# -- CONFIG FILES --
# ---------------------------

alias zshconfig='${EDITOR} ~/.config/zsh/.zshrc'
alias starshipconfig='${EDITOR} ~/.config/starship.toml'
alias kittyconfig='${EDITOR} ~/.config/kitty/kitty.conf'
alias zshcolors='${EDITOR} ~/.config/zsh/colors.zsh'
alias aliases='${EDITOR} ~/.config/zsh/aliases.zsh'

# ---------------------------
# -- KUBERNETES --
# ---------------------------

alias k='kubectl'
alias kga='kubectl get all -n'
alias kgp='kubectl get pods'
alias kgs='kubectl get service'
alias kctx='kubectx'
alias kns='kubens'

# ---------------------------
# -- GIT --
# ---------------------------

alias gs='git status -s'
alias gsi='git switch $(git branch | fzf)'
alias glo='git log --oneline --decorate'

# ---------------------------
# -- HELM --
# ---------------------------

alias hla='helm list --all-namespaces'
alias hrl='helm repo list'

# ---------------------------
# -- TERRAFORM --
# ---------------------------

alias tf='terraform'

# ---------------------------
# -- AWS --
# ---------------------------

function awsp() {
  local profile
  profile=$(sed -n 's/^\[profile \(.*\)\]/\1/p' ~/.aws/config | fzf)
  if [[ -n "$profile" ]]; then
    export AWS_PROFILE="$profile"
    echo "Switched to AWS_PROFILE=$AWS_PROFILE"
  fi
}