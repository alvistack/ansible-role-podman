#!/bin/bash

# (c) Wong Hoi Sing Edison <hswong3i@pantarei-design.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o xtrace

cd "$(cd "$(dirname "$0")"; pwd -P)/../"

# Prepare APT dependencies
if [ -x "$(command -v apt-get)" ]; then
    apt-get update
    apt-get install -y binutils bridge-utils dnsmasq-base ebtables libguestfs-tools libvirt-clients libvirt-daemon-system libvirt-dev make qemu-kvm qemu-utils ruby-dev
    curl -Os https://releases.hashicorp.com/vagrant/2.2.13/vagrant_2.2.13_x86_64.deb
    dpkg -i vagrant_2.2.13_x86_64.deb
    rm -rf vagrant_2.2.13_*
fi

# Prepare YUM dependencies
if [ -x "$(command -v yum)" ]; then
    yum makecache
    yum install -y binutils dnsmasq ebtables libguestfs-tools-c libvirt libvirt-client libvirt-devel make qemu-img qemu-kvm ruby-devel virt-install
    curl -Os https://releases.hashicorp.com/vagrant/2.2.13/vagrant_2.2.13_x86_64.rpm
    yum localinstall vagrant_2.2.13_x86_64.rpm
    rm -rf vagrant_2.2.13_*
fi

# Prepare Zypper dependencies
if [ -x "$(command -v zypper)" ]; then
    zypper -n --gpg-auto-import-keys refresh
    zypper -n install -y binutils-gold bridge-utils dnsmasq ebtables guestfs-tools libvirt libvirt-client libvirt-devel make qemu-kvm qemu-tools ruby-devel virt-install
    curl -Os https://releases.hashicorp.com/vagrant/2.2.13/vagrant_2.2.13_x86_64.rpm
    zypper install vagrant_2.2.13_x86_64.rpm
    rm -rf vagrant_2.2.13_*
fi

# Install vagrant-libvirt
vagrant plugin install vagrant-libvirt
