# display file path after hostname
PS1="%B%F{green}%n@%m%f:%F{blue}%~%f%b%# "

# shortcuts
alias norm="norminette -R CheckForbiddenSourceHeader"
alias cc42="cc -Wall -Wextra -Werror"

# set screen brightness only for 42IP
if [[ $(whoami) = 'belam' ]]; then
	xrandr --output "HDMI-2" --brightness 0.8
fi

# set extended globbing for advanced pattern matching in shell
setopt extendedglob

# credentials for 42 header file
export USER='belam'
export MAIL='belam@student.42iskandarputeri.edu.my'

# reminder to open slots
function open_slot() {
    msg = "Did you open evaluation slots for today yet?"
    echo "${msg:?}" && notify-send -u critical -t 0 "${msg:?}"
}
