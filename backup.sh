#!/bin/bash
# NOTE: We include the directory /var/lib/dhcpcd/ in the exclude list because 
# on linux systems running dhcpcd >= 9.0.0, dhcpcd mounts several system subdirectories
# that put rsysnc in a loop that prevents it from completing.
rsync -aHAXS --delete --info=progress2 \
	--exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/var/lib/dhcpcd/*","/lost+found"} \
	"/" "/media/backup/"
