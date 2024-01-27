# scripts-xdeb
Shell Scripts for install programs

Almost all scripts have to be run as root to install them, so remember to do the following commands: 
```shell
$ chmod +x script.sh
$ sudo ./script.sh
```

The most common dependencies are `unzip,tar,wget,xdeb`

You can install them using the following commands:
```shell
$ sudo xbps-install unzip tar wget

# Xdeb
$ git clone --depth=1 https://github.com/xdeb-org/xdeb
$ chmod +x xdeb/xdeb
$ sudo mv xdeb/xdeb /usr/local/bin
```
