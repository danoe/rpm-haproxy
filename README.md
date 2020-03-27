[![Github All Releases](https://img.shields.io/github/downloads/DBezemer/rpm-haproxy/total.svg)](https://github.com/DBezemer/rpm-haproxy/releases)

This repository contains some build artifacts of HAproxy that are provided with no support and no expectation of stability.
The recommended way of using the repository is to build and test your own packages.

# RPM Specs for HAproxy on CentOS / RHEL / Amazon Linux with default syslog

Perform the following steps on a build box as a regular user.

## Install Prerequisites for RPM Creation

    sudo yum groupinstall 'Development Tools'

## Checkout this repository

    cd /opt
    git clone https://github.com/DBezemer/rpm-haproxy.git 
    cd ./rpm-haproxy
    git checkout 2.1

## Build using makefile
### Without Lua support
    make

### With Lua support
    make USE_LUA=1

Resulting RPM will be in `/opt/rpm-haproxy/rpmbuild/RPMS/x86_64/`

## Build using Docker
Except for Docker and docker-compose there are no other install requirements

    mkdir -p ~/repos
    cd ~/repos
    git clone https://github.com/DBezemer/rpm-haproxy.git 
    cd ./rpm-haproxy
    git checkout 2.0
    docker-compose up
    
Resulting RPM will be in your current directory ./rpmbuild/RPMS/x86_64/

## Credits

Based on the Red Hat 6.4 RPM spec for haproxy 1.4 combined with work done by 
- [@nmilford](https://www.github.com/nmilford)
- [@resmo](https://www.github.com/resmo) 
- [@kevholmes](https://www.github.com/kevholmes)
- Update to 1.8 contributed by [@khdevel](https://github.com/khdevel)
- Amazon Linux support contributed by [@thedoc31](https://github.com/thedoc31) and [@jazzl0ver](https://github.com/jazzl0ver)
- Version detect snippet by [@hiddenstream](https://github.com/hiddenstream)
- Conditional Lua build support by [@Davasny](https://github.com/Davasny)

Additional logging inspired by https://www.percona.com/blog/2014/10/03/haproxy-give-me-some-logs-on-centos-6-5/
