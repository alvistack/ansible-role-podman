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

set -euo pipefail

cd "$(cd "$(dirname "$0")"; pwd -P)/../"

# Prepare APT dependencies
if [ -x "$(command -v apt-get)" ]; then
    apt-get update
    apt-get dist-upgrade -y
    apt-get install -y ca-certificates curl gcc iproute2 python3 python3-dev sudo
fi

# Prepare YUM dependencies
if [ -x "$(command -v yum)" ]; then
    yum makecache
    yum update -y
    yum install -y ca-certificates curl gcc iproute python3 python3-devel sudo
fi

# Prepare Zypper dependencies
if [ -x "$(command -v zypper)" ]; then
    zypper -n --gpg-auto-import-keys refresh
    zypper -n update -y
    zypper -n install -y ca-certificates curl gcc iproute2 python3 python3-devel sudo
fi

# Install PIP
curl -skL https://bootstrap.pypa.io/get-pip.py | python3 - --prefix=/usr/local

# Install PIP dependencies
pip3 install --prefix=/usr/local --upgrade --requirement requirements.txt

# Install Ansible Collection dependencies
ansible-galaxy collection install --force --requirements-file ansible-galaxy-requirements.yml
