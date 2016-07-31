# Import all files
for DOTFILE in ~/.{aliases,env,functions,path,prompt,extra}
do
    [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DOTFILE;

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

