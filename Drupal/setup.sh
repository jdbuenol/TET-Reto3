apt install nfs-common
mkdir /home/ubuntu/nfs
mount -v 100.24.21.3:/ /home/ubuntu/nfs
mkdir /home/ubuntu/nfs/modules
mkdir /home/ubuntu/nfs/profiles
mkdir /home/ubuntu/nfs/themes
mkdir /home/ubuntu/nfs/sites
mkdir /home/ubuntu/nfs/sites/default
mkdir /home/ubuntu/nfs/sites/default/files
cp ./default.settings.php /home/ubuntu/nfs/sites/default/default.settings.php
cp ./default.settings.php /home/ubuntu/nfs/sites/default/settings.php
chmod -R 777 /home/ubuntu/nfs
