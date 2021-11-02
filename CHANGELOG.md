# Ansible Role for Podman

## 5.4.0 - TBC

### Major Changes

  - Upgrade minimal Ansible community package support to 4.8.0

## 5.3.0 - 2021-10-20

### Major Changes

  - Remove Fedora 33 support
  - Remove Ubuntu 20.10 support
  - Support Fedora 35
  - Support Ubuntu 21.10
  - Upgrade minimal Ansible community package support to 4.7.0

## 5.2.0 - 2021-09-19

### Major Changes

  - Install dependencies with package manager
  - Upgrade minimal Ansible community package support to 4.5.0

## 5.1.0 - 2021-07-18

### Major Changes

  - Move systemd service to `/etc/systemd` which generally available
  - Upgrade minimal Ansible community package support to 4.2.0
  - Support Debian 11
  - Support openSUSE Leap 15.3
  - Improve download archive logic

## 5.0.0 - 2021-06-02

### Major Changes

  - Upgrade minimal Ansible support to 4.0.0
  - Support Fedora 34
  - Support Ubuntu 21.04
  - Simplify download archive logic

## 4.7.0 - 2021-03-13

### Major Changes

  - Bugfix [ansible-lint `namespace`](https://github.com/ansible-community/ansible-lint/pull/1451)
  - Bugfix [ansible-lint `no-handler`](https://github.com/ansible-community/ansible-lint/pull/1402)
  - Bugfix [ansible-lint `unnamed-task`](https://github.com/ansible-community/ansible-lint/pull/1413)
  - Simplify Python dependency with system packages
  - Support RHEL 8 with Molecule
  - Support RHEL 7 with Molecule
  - Remove CentOS 8 support
  - Improve HTTP transparent proxy support
  - Improve download archive logic
  - Support CentOS 8 Stream
  - Support openSUSE Tumbleweed
  - Migrate base Vagrant box from `generic/*` to `alvistack/*`

## 4.6.0 - 2020-12-28

### Major Changes

  - Simplify Molecule scenario for vagrant-libvirt
  - Migrate from Travis CI to GitLab CI
  - Support Fedora 33
  - Remove Fedora 32 support
  - Support Ubuntu 20.10
  - Remove redundant tags from tasks

## 4.5.0 - 2020-08-26

### Major Changes

  - Upgrade minimal Ansible Lint support to 4.3.2
  - Support Podman v2.0 `podman.socket` service
  - Upgrade minimal Podman support to 2.0.0
  - Upgrade Travis CI test as Ubuntu Focal based
  - Upgrade minimal Ansible support to 2.10.0
  - Support openSUSE Leap 15.2
  - Remove Ubuntu 19.10 support

## 4.4.0 - 2020-06-04

### Major Changes

  - Install bash completion
  - Install with static binary archive
  - Support Fedora 32
  - Support Debian 10
  - `molecule -s default` with delegated to localhost

## 4.3.0 - 2020-04-22

### Major Changes

  - Template `molecule -s default` with dummy docker driver
  - Support CentOS/RHEL 8
  - Support Ubuntu 20.04
  - Remove Ubuntu 16.04 support
  - Upgrade minimal Molecule support to 3.0.2
  - Install bash completion

## 4.2.0 - 2020-02-24

  - Ininitial release for Ansible 2.9 or higher
  - Support both Ubuntu 18.04/19.10 or RHEL/CentOS 7 or openSUSE Leap 15.1
