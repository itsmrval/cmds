# handy-commands


<details>
  <summary>Table of contents</summary>
  <ol>
    <li><a href="#ZFS">ZFS</a></li>
  </ol>
</details>




### ZFS

* Used memory
  ```sh
  awk '/^size/ { print $1 " " $3 / 1048576 }' < /proc/spl/kstat/zfs/arcstats
  ```
