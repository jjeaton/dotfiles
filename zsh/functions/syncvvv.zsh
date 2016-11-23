# Link vvv directories to dropbox and back
function syncvvv() {
	local type="$1"

	case "$type" in
		backup )
			echo 'Backing up vvv/config/nginx-config/sites to Dropbox...'
			cp -r ~/Sites/vvv/config/nginx-config/sites ~/Dropbox/Backups/vvv/config/nginx-config/

			echo 'Backing up vvv/database...'
			cp -r ~/Sites/vvv/database ~/Dropbox/Backups/vvv/
			;;
		restore )
			echo 'Restoring vvv/config from Dropbox...'
			rm -rf ~/Sites/vvv/config/nginx-config/sites
			cp -r ~/Dropbox/Backups/vvv/config/nginx-config/sites ~/Sites/vvv/config/nginx-config/

			echo 'Restoring vvv/database from Dropbox...'
			rm -rf ~/Sites/vvv/database
			cp -r ~/Dropbox/Backups/vvv/database ~/Sites/vvv/
			;;
		* )
			;;
	esac
}
