<br />
<div align="center">
  <a href="">
    <img src="https://raw.githubusercontent.com/itsmrval/cmds/main/logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Commands directory</h3>

  <p align="center">
    This repository is a draft of useful commands
    <br />
    <a href="https://github.com/itsmrval/cmds/pulls">Pull request</a>
  </p>
</div>


### ZFS

* Used memory
  ```sh
  awk '/^size/ { print $1 " " $3 / 1048576 }' < /proc/spl/kstat/zfs/arcstats
  ```

### NodeJS 
* Repo setup (20.X)
  ```sh
  curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
  ```
* Package install
  ```sh
  apt install -y nodejs
  ```

### Network
* Display PPS
  ```sh
  cat /sys/class/net/vmbr0/statistics/tx_packets
  ```

### PHP

* Repo setup
  
  For debian:
  ```sh
  curl -sSL https://packages.sury.org/php/README.txt | sudo bash -x
  ```
  For ubuntu:
  ```sh
  LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
  ```
* Package install
  ```sh
  apt update
  apt install -y php8.1 php8.1-{common,cli,gd,mysql,mbstring,bcmath,xml,fpm,curl,zip}
  ```
