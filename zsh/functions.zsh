# Checkout remote branch locally
function gcbr() {
    if [[ ! -z "$1" ]]; then
        git checkout -b "$1" origin/"$1"
    else
        echo "Usage: gcbr <branch_name>"
    fi
}

# Open in Path Finder
# http://alexking.org/blog/2011/11/20/open-in-pathfinder-from-the-terminal
function pf () {
	open -a "Path Finder.app" $1;
}

# Image functions
# http://brettterpstra.com/2013/07/24/bash-image-tools-for-web-designers/

# Quickly get image dimensions from the command line
function imgsize() {
    local width height
    if [[ -f $1 ]]; then
        height=$(sips -g pixelHeight "$1"|tail -n 1|awk '{print $2}')
        width=$(sips -g pixelWidth "$1"|tail -n 1|awk '{print $2}')
        echo "${width} x ${height}"
    else
        echo "File not found"
    fi
}

# encode a given image file as base64 and output css background property to clipboard
function 64enc() {
    openssl base64 -in $1 | awk -v ext="${1#*.}" '{ str1=str1 $0 }END{ print "background:url(data:image/"ext";base64,"str1");" }'|pbcopy
    echo "$1 encoded to clipboard"
}

function 64font() {
    openssl base64 -in $1 | awk -v ext="${1#*.}" '{ str1=str1 $0 }END{ print "src:url(\"data:font/"ext";base64,"str1"\")  format(\"woff\");" }'|pbcopy
    echo "$1 encoded as font and copied to clipboard"
}

# URL encode helpers (using Python)
function urlencode() {
    python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])" "$1"
}

function urldecode() {
    python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])" "$1"
}

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}

# Run `dig` and display the most useful info
function digg() {
	dig +nocmd "$1" any +multiline +noall +answer;
}

