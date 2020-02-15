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
