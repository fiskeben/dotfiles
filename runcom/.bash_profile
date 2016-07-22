# Import all files
for DOTFILE in `find ~/dotfiles/system`
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for OVERRIDE_DOTFILE in `find ~/dotfiles/local`
do
    [ -f "$OVERRIDE_DOTFILE" ] && source "$OVERRIDE_DOTFILE"
done

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

