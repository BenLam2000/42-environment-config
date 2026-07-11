# display file path after hostname
PS1="%B%F{green}%n@%m%f:%F{blue}%~%f%b%# "

# shortcuts
alias norm="norminette -R CheckForbiddenSourceHeader"
alias cc42="cc -Wall -Wextra -Werror"

# set extended globbing for advanced pattern matching in shell
setopt extendedglob

# credentials for 42 header file
#export USER='belam'
#export MAIL='belam@student.42iskandarputeri.edu.my'

# reminder to open slots
function open_slot() {
    msg = "Did you open evaluation slots for today yet?"
    echo "${msg:?}" && notify-send -u critical -t 0 "${msg:?}"
}

###################### PATH SETTINGS ##########################################
if [[ "$PATH" != *"$HOME/.local/bin"* ]]; then
    export PATH="$PATH:$HOME/.local/bin"
fi

###############################################################################


###################### History Settings #######################################
# Path to the file where history will be saved
HISTFILE=~/.zsh_history

# Maximum number of commands to keep in the current session's memory
HISTSIZE=10000

# Maximum number of commands to save in the history file
SAVEHIST=10000

# History Options (setopt)
setopt SHARE_HISTORY          # Share history between all sessions
#setopt HIST_IGNORE_DUPS       # Don't record duplicates
setopt EXTENDED_HISTORY       # Save timestamps
setopt INC_APPEND_HISTORY     # Save commands immediately after exe each command instead of after closing session

##############################################################################
