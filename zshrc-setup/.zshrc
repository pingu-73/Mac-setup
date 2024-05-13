export PATH="/Library/TeX/texbin/:$PATH"

#XQuartz path setup
export PATH="/opt/X11/bin:$PATH"


# exporting postgresSql
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/16/bin


#zsh-autocomplete hook
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#Mannual Installation Added pure to path
fpath+=($HOME/.zsh/pure)

#Activating pure prompt
autoload -U promptinit; promptinit
zmodload zsh/nearcolor
#zstyle :prompt:pure:path color white
#zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure


#for zoxide 
eval "$(zoxide init zsh)"



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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dikshantdikshant/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dikshantdikshant/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dikshantdikshant/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dikshantdikshant/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Check if Conda is activated and deactivate it
if [ -n "$CONDA_EXE" ]; then
    conda deactivate
fi
PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
