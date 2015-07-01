# Salt master/minion

This vagrant multi-machine provides you with an out-of-the box salt master/minion
setup.

## Getting started

Type `vagrant up` from the repository root. The first time might take a little
while since it will need to download the base ubuntu boxes as well as the initial
salt bootstrapping on both machines.

After they finish, do this to make sure everything works:
```
$ vagrant ssh salt-master
vagrant@master:~$ sudo salt minion test.ping
minion:
    True
```

## Usage

Now you can practice salt formulas from master to slave. If you need a fresh
minion you can easily do a `vagrant destroy salt-minion`, then `vagrant up
salt-minion`.
