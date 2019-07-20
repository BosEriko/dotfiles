# Source Antigen
source $(brew --prefix)/share/antigen/antigen.zsh

# List Antigen Plugins
antigen bundle djui/alias-tips

# Apply Antigen Plugins
antigen apply

# Plugins Config
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Has alias: "