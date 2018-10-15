# Development Environment Setup Instructions For Oopla with Vagrant
## What is it?
This branch holds the instructions and Vagrant file to setup a vagrant development box for the oopla project.
## How?
### Note
Use a git enabled shell while executing the commands (git-bash on windows)

### First
* Install Git [link](http://git-scm.com/)
* Install Vagrant [link](http://www.vagrantup.com/)
* Install VirtualBox [link](https://www.virtualbox.org)
* Execute ``` git config --global core.autocrlf false ``` in a git enabled shell if you are on windows.
* Clone this repository into a desired folder
```
git clone -b oopla_vagrant git@github.com:playedonline/ruby_env_setup.git
```

### Next
* For Windows
    * If you have non ascii characters in your windows user name
        * create a folder named vagrant_home in c drive. ('C:\vagrant_home')
        * set the VAGRANT_HOME environment variable to this folder ('SET VAGRANT_HOME=C:\vagrant_home')
        
### Last

* cd to the cloned repository
* Clone the oopla repository
* Execute ``` vagrant up ``` and wait until the job done.
* Edit the hosts file and add these if you need

```
192.168.56.101 www.kizi.com
192.168.56.101 kizi.com
```

* Initialize an ssh session to the box ``` vagrant ssh ```
* cd to the oopla folder ``` cd /var/oopla ```
* Execute ``` ./bundle.sh ```

### Common Vagrant Commands

More information on [Vagrant](http://www.vagrantup.com/) site.

* **vagrant up** turns the box on.
* **vagrant halt** turns the box off.
* **vagrant sleep** make the box sleep.
* **vagrant destroy** deletes the box.
* **vagrant ssh** initialize ssh session to the box

### What is included?
* n-ginx
* mysql 5.6.35
* ruby 2.3.3
* rails 

### Server Settings
* Server IP is 192.168.56.101
* SSH credentials: vagrant / vagrant
* MySQL credentials: root / 123123
* Database Name: oopla_development

### Toubleshoot
* NS_ERROR_FAILURE
    * Virtualbox 4.3- ``` sudo /Library/StartupItems/VirtualBox/VirtualBox restart ``
    * Virtualbox 4.3+ ``` sudo launchctl load /Library/LaunchDaemons/org.virtualbox.startup.plist ```
* unknown command '$\r'
    * execute following command in a git enabled shell ``` git config --global core.autocrlf false ```

