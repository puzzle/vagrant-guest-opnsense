# vagrant-guest-opnsense
This is a Vagrant plugin adding support for OPNsense guests.


## Installation
To install this plugin to your local vagrant installation run the following command:
```
vagrant plugin install vagrant-guest-opnsense
```

## Example Vagrantfile
See [Vagrantfile.example](./Vagrantfile.example)


## Supported and Tested functionality
### 1.0.0
 - Guest detection as OPNsense
 - Hostname configuration

## Testing
Setup local vagrant environment:
```
bundle install
export VAGRANT_HOME="$(bundle info --path vagrant)"
bundle exec vagrant_spec tets
```


## Authors
 - Fabio Bertagna <bertagna@puzzle.ch>