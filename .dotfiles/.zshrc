# An array of directories specifying the search path for function definitions.
fpath=("$XDG_DATA_HOME"/zsh/functions "${fpath[@]}")

# Customize how the end of partial lines are shown.
PROMPT_EOL_MARK=$'%S %s'

# The primary prompt string, printed before a command is read.
PS1=$'%~%# '

# A list of non-alphanumeric characters considered part of a word by the line editor.
WORDCHARS=

# Those characters will cause the suffix to be removed.
ZLE_REMOVE_SUFFIX_CHARS=$';'

for f in "${fpath[1]}"/**/*(^/:t)
do
    autoload -Uz "$f"
done; unset f

for f in "${fpath[1]}"/Zle/*(:t)
do
    zle -N "$f"
done; unset f

for f in "${fpath[1]:h}"/*.zsh(n)
do
    . "$f"
done; unset f

# Note that zsh-syntax-highlighting must be the last plugin sourced.
. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
