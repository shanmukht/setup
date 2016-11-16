echo "running install.sh file"

echo -ne "Do you want to validate OneOps after installation?(true|false):"
read OO_VALIDATION
export OO_VALIDATION=$OO_VALIDATION

INIT="/init"
VAGRANT="/vagrant"
GITHUB_URL='https://github.com/oneops'

yum -y install git

GIT_VERSION=`git --version`
if [ -z "$GIT_VERSION" ]; then
  	echo "Git should be installed first. Use 'yum -y install git'"
  	echo "Ending at : $now"
	exit 1
fi

mkdir $INIT
mkdir $VAGRANT

cd $INIT
git clone "$GITHUB_URL/setup.git"
cp -R $INIT/setup/vagrant/* $VAGRANT
chmod 777 -R $VAGRANT

$VAGRANT/oo-prereqs.sh
$VAGRANT/oo-setup.sh
