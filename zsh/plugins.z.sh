
# Source Antigen
source $(brew --prefix)/share/antigen/antigen.zsh

# Plugins Config
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Has alias: "

# List Antigen Plugins
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply Antigen Plugins
antigen apply

