# Import all files
for DOTFILE in ~/.{aliases,env,functions,path,prompt,extra}
do
    [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DOTFILE;

if [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
    . $(brew --prefix)/etc/bash_completion.d/aws_bash_completer
    . $(brew --prefix)/etc/bash_completion.d/brew
    . $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
    . $(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

