Nginx + Phuson Passenger on Ubuntu 16.04 Server
---------------

### Installing

```bash
git clone https://github.com/mjacobus/installers /root/installers
cd /root/installers/ubuntu/server-16.04
cp .env.example .env

# edit the .env according to your needs

./nginx-passenger.sh
./ruby-test-app.sh

# if you want your github keys to be added to the deploy user (they are synced every 1 hour)
./add-deploy-user-and-set-keys.sh
```

### Creating a vhost

```bash
./install-ruby-app.sh www.my-domain.com
```

- [InstallingPhuson Passenger](https://www.phusionpassenger.com/library/install/nginx/install/oss/xenial/)
- [Deploying](https://www.phusionpassenger.com/library/deploy/nginx/deploy/ruby/)
- [Nginx + Passenger config](https://www.phusionpassenger.com/library/config/nginx/reference/)
- [Nice to watch](https://gorails.com/deploy/ubuntu/16.04)
