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
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get dist-upgrade -y
    apt-get install -y bzip2 ca-certificates curl gcc gnupg gzip iproute2 procps python3 python3-apt python3-cryptography python3-dev python3-jmespath python3-lxml python3-netaddr python3-pip python3-setuptools python3-venv python3-virtualenv python3-wheel sudo tar unzip xz-utils zip
fi

# Prepare YUM dependencies
if [ -x "$(command -v yum)" ]; then
    yum makecache
    yum update -y
    yum install -y bzip2 ca-certificates curl gcc gnupg2 gzip iproute procps-ng python3 python3-cryptography python3-devel python3-jmespath python3-libselinux python3-lxml python3-netaddr python3-pip python3-setuptools python3-virtualenv python3-wheel sudo tar unzip xz yum-utils zip
fi

# Prepare Zypper dependencies
if [ -x "$(command -v zypper)" ]; then
    zypper -n --gpg-auto-import-keys refresh
    zypper -n update -y
    zypper -n install -y bzip2 ca-certificates curl gcc gpg2 gzip iproute2 procps python3 python3-cryptography python3-devel python3-jmespath python3-lxml python3-netaddr python3-pip python3-setuptools python3-virtualenv python3-wheel sudo tar unzip xz zip
fi

# Install PIP dependencies
pip3 install --prefix=/usr/local --upgrade pipx

# Install Ansible dependencies
export PIPX_HOME=/usr/local/share/pipx
export PIPX_BIN_DIR=/usr/local/bin
pipx install --force flake8
pipx install --force yamllint
pipx install --force --include-deps 'ansible>=2.10.3,<2.11.0'
pipx inject --force --include-apps ansible ansible-lint ansible-runner molecule
pipx inject --force ansible ansible-runner-http docker molecule-docker molecule-podman molecule-vagrant openshift python-vagrant

# Install Ansible Collection dependencies
ansible-galaxy collection install --force --requirements-file ansible-galaxy-requirements.yml
