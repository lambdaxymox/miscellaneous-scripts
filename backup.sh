#!/bin/bash
rsync -aHAXS --delete --info=progress2 --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} "/" "/media/backup/"