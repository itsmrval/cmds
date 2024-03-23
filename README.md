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
  ```sh
  apt install -y nodejs
  ```

### Network
* Display PPS
  ```sh
  cat /sys/class/net/vmbr0/statistics/tx_packets
  ```
