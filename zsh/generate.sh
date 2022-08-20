#!/usr/bin/env sh

rm ~/.zshrc
cat ~/.files/zsh/modules/config.z.sh            \
    ~/.files/zsh/modules/colors.z.sh            \
    ~/.files/zsh/modules/plugins.z.sh           \
    ~/.files/zsh/modules/hotkeys.z.sh           \
    ~/.files/zsh/modules/dir.z.sh               \
    ~/.files/zsh/modules/src.z.sh               \
    ~/.files/zsh/modules/alias.z.sh             \
    ~/.files/zsh/modules/docker.z.sh            \
    ~/.files/zsh/modules/projects.z.sh          \
    ~/.files/zsh/modules/fzf.z.sh               \
    ~/.files/zsh/modules/vim.z.sh               \
    ~/.files/zsh/modules/node.z.sh              \
    ~/.files/zsh/modules/ruby.z.sh              \
    ~/.files/zsh/modules/git.z.sh               \
    ~/.files/zsh/modules/personal.z.sh          \
    ~/.files/zsh/modules/start-session.z.sh     \
    ~/.files/zsh/modules/end-session.z.sh       \
    ~/.files/zsh/modules/environment.z.sh       \
    ~/.files/zsh/modules/path.z.sh              \
    > ~/.zshrc
echo "Generating: The .zshrc file has been generated."
