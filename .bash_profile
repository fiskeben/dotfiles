# Import all files
for DOTFILE in ~/.{aliases,env,functions,path,prompt,extra}
do
    [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DOTFILE;

if [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
    . $(brew --prefix)/etc/bash_completion.d/bash-builtins
    . $(brew --prefix)/etc/bash_completion.d/brew
    . $(brew --prefix)/etc/bash_completion.d/docker
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    . $(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh
    . $(brew --prefix)/etc/bash_completion.d/kubectl
fi

if [ -f "$(brew --prefix)/opt/git/etc/bash_completion.d/git-prompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix)/opt/git/etc/bash_completion.d/git-prompt.sh"
    source "$(brew --prefix)/opt/git/etc/bash_completion.d/git-completion.bash"
fi

