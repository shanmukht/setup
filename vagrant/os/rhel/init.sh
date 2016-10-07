subscription-manager register --username xxxxxxxxxxxxxxxx --password xxxxxx --auto-attach
subscription-manager refresh
subscription-manager repos  --enable rhel-7-server-optional-rpms
sudo yum makecache
