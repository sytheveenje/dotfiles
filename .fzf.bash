# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/sythe/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/sythe/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/sythe/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/sythe/.fzf/shell/key-bindings.bash"
