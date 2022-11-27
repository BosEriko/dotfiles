# GPG
- You must have `gpg` installed. If not, you install it first.
- Generate a GPG key with `gpg --gen-key` or `gpg --full-gen-key`.
- List your GPG keys with `gpg --list-secret-keys --keyid-format long` and get the part after the `/` in the line that starts with `sec`. For example: `0E6198DFB2D67A26`.
- Run `gpg --armor --export 0E6198DFB2D67A26`, copy the output, and configure it on the remote repository, e.g. GitHub, Gitlab, etc.
- Configure Git to use the selected key for signing commits: `git config --global user.signingkey 0E6198DFB2D67A26`.
- Create signed commits by adding the `-S` parameter to your commits. For example, `git commit -S -m "Hello world."`
