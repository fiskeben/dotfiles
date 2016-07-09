# Import all files
for DOTFILE in `find ~/dotfiles/system`
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
