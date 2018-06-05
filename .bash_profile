source_if () {
    if [ -d "$(brew --prefix)/etc/bash_completion.d/$1" ]; then
        . "$(brew --prefix)/etc/bash_completion.d/$1"
    fi
}

# Import all files
for DOTFILE in ~/.{aliases,env,functions,path,prompt,extra}
do
    [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DOTFILE;

if [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
    source_if "bash-builtins"
    source_if "brew"
    source_if "docker"
    source_if "git-completion.bash"
    source_if "hub.bash_completion.sh"
    source_if "kubectl"
    source_if "aws_bash_completer"
    source_if "helm"
    source_if "kops"
fi

if [ -f "$(brew --prefix)/opt/git/etc/bash_completion.d/git-prompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix)/opt/git/etc/bash_completion.d/git-prompt.sh"
    source "$(brew --prefix)/opt/git/etc/bash_completion.d/git-completion.bash"
fi

export PATH="/usr/local/opt/curl/bin:$PATH"
