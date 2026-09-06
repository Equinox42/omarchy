## Configure ZSH for Omarchy

Use your terminal to launch the shell, otherwise it will probabably start breaking things when you reboot your machine (see https://github.com/omacom/omarchy/discussions/2495)


```bash
echo 'export ZDOTDIR="$HOME/.config/zsh"' > ~/.zshenv
mkdir ~/.config/zsh
mkdir -p .local/state/zsh
mkdir -p .cache/zsh
```