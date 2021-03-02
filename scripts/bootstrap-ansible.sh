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
    apt-get install -y bzip2 ca-certificates curl gcc gnupg gzip iproute2 procps python3 python3-apt python3-cryptography python3-dev python3-jmespath python3-lxml python3-pip python3-setuptools python3-venv python3-virtualenv python3-wheel sudo tar unzip xz-utils zip
fi

# Prepare YUM dependencies
if [ -x "$(command -v yum)" ]; then
    yum makecache
    yum update -y
    yum install -y bzip2 ca-certificates curl gcc gnupg2 gzip iproute procps-ng python3 python3-cryptography python3-devel python3-jmespath python3-libselinux python3-lxml python3-pip python3-setuptools python3-virtualenv python3-wheel sudo tar unzip xz yum-utils zip
fi

# Prepare Zypper dependencies
if [ -x "$(command -v zypper)" ]; then
    zypper -n --gpg-auto-import-keys refresh
    zypper -n update -y
    zypper -n install -y bzip2 ca-certificates curl gcc gpg2 gzip iproute2 procps python3 python3-cryptography python3-devel python3-jmespath python3-lxml python3-pip python3-setuptools python3-virtualenv python3-wheel sudo tar unzip xz zip
fi

# Install PIP dependencies
pip3 install --prefix=/usr/local --upgrade pipx
PIPX_HOME=/usr/local/share/pipx PIPX_BIN_DIR=/usr/local/bin pipx install --include-deps --pip-args "--upgrade --requirement requirements.txt" ansible

# Install Ansible Collection dependencies
ansible-galaxy collection install --force --requirements-file ansible-galaxy-requirements.yml
