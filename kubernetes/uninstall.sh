#!/bin/bash

kubeadm reset
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y --allow-change-held-packages
rm -rf ~/.kube
rm -rf /etc/cni /etc/kubernetes rm -f /etc/apparmor.d/docker /etc/systemd/system/etcd*
rm -rf /var/lib/dockershim /var/lib/etcd /var/lib/kubelet /var/lib/etcd2/ /var/run/kubernetes
iptables -F && iptables -X
iptables -t nat -F && iptables -t nat -X
iptables -t raw -F && iptables -t raw -X
iptables -t mangle -F && iptables -t mangle -X
docker image prune -a
systemctl restart docker
sudo apt purge docker-engine docker docker.io docker-ce docker-ce-cli containerd containerd.io runc --allow-change-held-packages -y
sudo apt autoremove --purge -y --allow-change-held-packages
sudo groupdel docker
