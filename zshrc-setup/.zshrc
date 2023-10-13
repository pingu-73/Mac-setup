#Mannual Installation Added pure to path
fpath+=($HOME/.zsh/pure)

#Activating pure prompt
autoload -U promptinit; promptinit
zmodload zsh/nearcolor
#zstyle :prompt:pure:path color white
#zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure



#Activating starship
#eval "$(starship init zsh)"

# Load Angular CLI autocompletion.
#source <(ng completion script)

#changing arch to arm64 and x86_64 
alias arm="env /usr/bin/arch -arm64 /bin/zsh --login"
alias intel="env /usr/bin/arch -x86_64 /bin/zsh --login"





#Oppia-web setup

#hooking direnv
eval "$(direnv hook zsh)"

#pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(/opt/homebrew/bin/brew shellenv)" #makes arm homebrew the default
#eval "$(/usr/local/bin/brew shellenv)" #makes x86 homebrew the default 
export PATH="/opt/homebrew/bin:$PATH"
