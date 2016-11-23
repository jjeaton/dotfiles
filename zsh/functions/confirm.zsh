# Require confirmation to proceed, with custom prompt
# @see http://stackoverflow.com/questions/3231804/in-bash-how-to-add-are-you-sure-y-n-to-any-command-or-alias?noredirect=1&lq=1
# Modified for zsh: http://superuser.com/questions/555874/zsh-read-command-fails-within-bash-function-read1-p-no-coprocess
function confirm () {
	# Call with a prompt or use a default
	read "response?${1:-Are you sure? [y/N]} "
	case "$response" in
		[yY][eE][sS]|[yY])
			true
			;;
		*)
			false
			;;
	esac
}
