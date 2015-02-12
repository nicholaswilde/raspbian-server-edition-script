# Raspbian Server Edition Script
A script to create a server edition of [Raspian](http://raspbian.org/) for the [Raspberry Pi](http://www.raspberrypi.org/).

This script is based off of SirLagz [Raspian Server Edition Scripts](http://sirlagz.net/2013/08/03/raspbian-server-edition-scripts/) post.

## About
This script is meant to to be run in Raspbian to remove packages not needed for a headless server.

## How it works
pkgs

## Directions
To run 
```
$ sudo bash pkgs.sh
```

## Helpful commands
To only list the package names that have currently been removed from your system, run the following:
```
$ dpkg -l | grep '^rc' | awk -F\  ' { print $2 }' | awk -F: ' { print $1 }'
```
To create your own list of packages to remove based on your own system, run the following:
```
$ dpkg -l | grep '^rc' | tee pkgs.list
```
http://askubuntu.com/a/18807/344358
