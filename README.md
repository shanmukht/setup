overview
=====

This is a local OneOps instance using Vagrant without metrics collections.  It's a simplified design deployed from bash scripts.  

For a full-deployment of OneOps with metrics (back loop) use the core assembly within this vagrant image.

Prerequisites
=======

install VirtualBox and Vagrant 1.8.4 (At this time 1.8.5 is latest. But it has few issues with our installation)


Install
=======

##### Vagrant
Follow below steps to install OneOps in local Vagrant.

1. Download Setup Code
	```
	git clone https://github.com/oneops/setup
	```

2. Choose required OS flavor of Linux (At this time we tested with CentOs7, Ret Hat Linux 7)
    ##### Deprecating soon ( Currently most of the users using this)
    ###### CentOs7
	```bash
	cd setup/vagrant-centos7
	```
    ##### New Approach ( We recommend using this)
    ###### CentOs7
	```bash
	cd setup/vagrant
	```
	###### RHEL7
	```bash
	cd setup/vagrant/os/rhel
	```
	
	> Red Hat Linux: Modify setup/vagrant/os/rhel/init.sh with your Red Hat Linux registration details.

3. Run vagrant installation.
	```bash
	vagrant up 
	```

4. OneOps run at http://localhost:9090

##### Bare Metal
Follow below steps to install OneOps on any bare metal like new Linux system (or) EC2 Cloud (or) Azure cloud.

1. SSH to that box.
2. Work as root user
	```bash
	sudo su
	```

3. Get [install.sh](https://github.com/oneops/setup/blob/master/install.sh) file into box (Any location is fine)
	```bash
	wget 'https://raw.githubusercontent.com/oneops/setup/master/install.sh'
	```
    > If 'wget' is not supported, find the alternative. Idea is we need to get [install.sh](https://github.com/oneops/setup/blob/master/install.sh) file into this bare metal box.
    
4. Provide enough permissions to execute it
	```bash
	chmod 777 install.sh
	```

5. Run install.sh (This will take care of OneOps self installation).
	```bash
	./install.sh
	```

6. OneOps run at http://BARE_METAL_BOX_IP_ADDRESS:3000
	> By default, Clould boxes won't expose the port numbers. You should enable port:3000 manually.

General
=======

Installation takes about ~40 min, depending on your internet connection.

You will have to Sign Up (create local user / org) and then create a Cloud, Assembly, and Environment to deploy something.

More detailed info on that process [here](http://oneops.github.io/admin/getting-started/#installing-vagrant-image).

To see the deployment logs:

```bash
cd /opt/oneops/inductor
inductor tail
```
