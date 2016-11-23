# Link vvv directories to dropbox and back
function syncvvv() {
	local type="$1"

	case "$type" in
		backup )
			echo 'Backing up vvv/config...'
			cp -r ~/Sites/vvv/config ~/Dropbox/Backups/vvv/
			rm -rf ~/Sites/vvv/config
			ln -s ~/Dropbox/Backups/vvv/config ~/Sites/vvv/config
			echo 'Backing up vvv/database...'
			cp -r ~/Sites/vvv/database ~/Dropbox/Backups/vvv/
			rm -rf ~/Sites/vvv/database
			ln -s ~/Dropbox/Backups/vvv/database ~/Sites/vvv/database
			;;
		restore )
			echo 'Restoring vvv/config from Dropbox...'
			rm -rf ~/Sites/vvv/config
			ln -s ~/Dropbox/Backups/vvv/config ~/Sites/vvv/config
			echo 'Restoring vvv/database from Dropbox...'
			rm -rf ~/Sites/vvv/database
			ln -s ~/Dropbox/Backups/vvv/database ~/Sites/vvv/database
			;;
		uninstall )
			echo 'Unlinking vvv/config from Dropbox...'
			rm -rf ~/Sites/vvv/config
			cp -r ~/Dropbox/Backups/vvv/config ~/Sites/vvv/config
			echo 'Unlinking vvv/database from Dropbox...'
			rm -rf ~/Sites/vvv/database
			cp -r ~/Dropbox/Backups/vvv/database ~/Sites/vvv/database
			;;
		* )
			;;
	esac
}
