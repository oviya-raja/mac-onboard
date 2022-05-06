# shell profiling - time
zmodload zsh/zprof

autoload -Uz compinit
if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
    compinit
else
    compinit -C
fi

## You language environment
export LANG=en_US.UTF-8

# aws-vault
export AWS_VAULT_BACKEND=file

# OpenSSL
export LDFLAGS="-L/usr/local/opt/openssl@3/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@3/include"

# CURL
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"

# python@3.10
export LDFLAGS="-L/usr/local/opt/python@3.10/lib"

# zsh-autosuggestions & zsh-syntax-highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

################################################################################################
#openssl@3
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

# Core Utils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# curl 
export PATH="/usr/local/opt/curl/bin:$PATH"

# python@3.10
export PATH="/usr/local/opt/python@3.10/bin:$PATH"
################################################################################################
 
