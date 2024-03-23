# useful-commands


<details>
  <summary>Table of contents</summary>
  <ol>
    <li><a href="#ZFS">ZFS</a></li>
    <li><a href="#nodejs">NodeJS</a></li>

  </ol>
</details>




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
  ```sh
  LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
  apt update
  ```
* Package install
  ```sh
  apt install -y php8.1 php8.1-{common,cli,gd,mysql,mbstring,bcmath,xml,fpm,curl,zip}
  ```
