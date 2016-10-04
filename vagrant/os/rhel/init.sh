subscription-manager register --username xxxxxxxxxxxxxxxx --password xxxxxx --auto-attach
subscription-manager refresh
subscription-manager repos  --enable rhel-7-server-optional-rpms
sudo yum makecache

export POSTGRES_RPM_PATH=http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-redhat92-9.2-9.noarch.rpm
