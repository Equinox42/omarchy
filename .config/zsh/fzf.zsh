export FZF_ALT_C_COMMAND="fd -t d . $HOME"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--style full --height 80% --preview 'bat --theme=Nord --color=always -n --line-range :500 {}'"

# =========================================================
# FZF THEME
# =========================================================

export FZF_DEFAULT_OPTS=" \
--color=bg:-1,bg+:-1 \
--color=fg:#c0c0c0,fg+:#ffffff \
--color=hl:#549790,hl+:#78d7ce \
--color=info:#90A4AE,prompt:#549790,pointer:#fb6f92 \
--color=marker:#ff5555,spinner:#549790,header:#549790 \
--color=border:#78d7ce,label:#aeaeae \
--border=rounded \
--reverse \
--color=gutter:#fb6f92 \
--pointer='➜'"