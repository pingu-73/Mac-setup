#for esp-32
#alias get_idf='. $HOME/esp/esp-idf/export.sh'

# for arm64
eval "$(/opt/homebrew/bin/brew shellenv)"

#for intel x86_64
#eval "$(/usr/local/bin/brew shellenv)"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# >>> coursier install directory >>>
export PATH="$PATH:/Users/dikshantdikshant/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<


#for using openMP
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export PATH="/usr/local/opt/bison/bin:$PATH"
