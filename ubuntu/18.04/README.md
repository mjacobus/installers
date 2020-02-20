Ubuntu 18.04
---------

#### Installation of dependencies

```
git clone https://github.com/mjacobus/installers`
cd ubuntu/18.04
./00_base.sh # base dependencies
```

#### Manual steps

- String repeat `Settings > Universal Access > Typing > Repeat keys`
- Disable terminal bell `File > Preferences > Text > Sound > terminal bell`
- Install google chrome
- Install [Slack](https://slack.com/intl/en-br/downloads/linux)


#### Known known

Cannot reach rubygems.org on ipv6:

- sysctl -w net.ipv6.conf.all.disable_ipv6=1
- sysctl -w net.ipv6.conf.default.disable_ipv6=1

Or disable ipv6 [for good](https://linuxconfig.org/how-to-disable-ipv6-address-on-ubuntu-18-04-bionic-beaver-linux).


#### Installing vagrant on Ubuntu 18.04

```bash
sudo apt install virtualbox
curl -O https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb
sudo apt install vagrant_2.2.7_x86_64.deb
```

Helpfull commands:

```bash
vagrant up --provider=virtualbox`          # better error message
VBoxManage --version                       # better error message
sudo apt-get install virtualbox-dkms       # install dependency
sudo apt-get install linux-headers-generic # Maybe dependency
```
