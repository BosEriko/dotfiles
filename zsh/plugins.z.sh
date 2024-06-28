
# ================================================================================ [Plugins] ===== #

# Source Antigen
source /usr/share/zsh-antigen/antigen.zsh

# Plugins Config
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Has alias: "

# List Antigen Plugins
antigen bundle djui/alias-tips                      # An oh-my-zsh plugin to help remembering those aliases you defined once (https://github.com/djui/alias-tips)
antigen bundle zsh-users/zsh-autosuggestions        # Fish-like autosuggestions for zsh (https://github.com/zsh-users/zsh-autosuggestions)
antigen bundle zsh-users/zsh-completions            # Additional completion definitions for Zsh (https://github.com/zsh-users/zsh-completions)
antigen bundle zsh-users/zsh-syntax-highlighting    # Fish shell like syntax highlighting for Zsh (https://github.com/zsh-users/zsh-syntax-highlighting)

# Apply Antigen Plugins
antigen apply
