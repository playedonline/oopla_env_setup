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
