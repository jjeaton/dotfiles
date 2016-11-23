# Link vvv directories to dropbox and back
function syncvvv() {
	local type="$1"

	case "$type" in
		backup )
			echo 'Backing up vvv/config/nginx-config/sites...'
			cp -r ~/Sites/vvv/config/nginx-config/sites ~/Temp/
			cp -r ~/Sites/vvv/config/nginx-config/sites ~/Dropbox/Backups/vvv/config/nginx-config/
			rm -rf ~/Sites/vvv/config/nginx-config/sites
			ln -s ~/Dropbox/Backups/vvv/config/nginx-config/sites ~/Sites/vvv/config/nginx-config/sites
			echo 'Backing up vvv/database...'
			cp -r ~/Sites/vvv/database ~/Temp
			cp -r ~/Sites/vvv/database ~/Dropbox/Backups/vvv/
			rm -rf ~/Sites/vvv/database
			ln -s ~/Dropbox/Backups/vvv/database ~/Sites/vvv/database
			;;
		restore )
			echo 'Restoring vvv/config from Dropbox...'
			rm -rf ~/Sites/vvv/config/nginx-config/sites
			ln -s ~/Dropbox/Backups/vvv/config/nginx-config/sites ~/Sites/vvv/config/nginx-config/sites
			echo 'Restoring vvv/database from Dropbox...'
			rm -rf ~/Sites/vvv/database
			ln -s ~/Dropbox/Backups/vvv/database ~/Sites/vvv/database
			;;
		uninstall )
			echo 'Unlinking vvv/config from Dropbox...'
			rm -rf ~/Sites/vvv/config/nginx-config/sites
			cp -r ~/Dropbox/Backups/vvv/config/nginx-config/sites ~/Sites/vvv/config/nginx-config/sites
			echo 'Unlinking vvv/database from Dropbox...'
			rm -rf ~/Sites/vvv/database
			cp -r ~/Dropbox/Backups/vvv/database ~/Sites/vvv/database
			;;
		* )
			;;
	esac
}
