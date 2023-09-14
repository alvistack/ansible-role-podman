# Ansible Role for Podman

## 8.5.0 - TBC

### Major Changes

## 8.4.0 - 2023-09-14

### Major Changes

-   Support Ansible community package 8.4.0

## 8.3.0 - 2023-08-15

### Major Changes

-   Support Ansible community package 8.3.0

## 8.2.0 - 2023-07-24

### Major Changes

-   Support Ansible community package 8.2.0
-   Remove Ubuntu 22.10 support

## 8.1.0 - 2023-06-23

### Major Changes

-   Support Ansible community package 8.1.0

## 8.0.0 - 2023-06-17

### Major Changes

-   Remove Ubuntu 18.04 support
-   Remove Debian 10 support
-   Support Debian 12
-   Support openSUSE Leap 15.5
-   Support Ansible community package 8.0.0

## 7.6.0 - 2023-05-24

### Major Changes

-   Support Ansible community package 7.6.0

## 7.5.0 - 2023-05-16

### Major Changes

-   Remove Fedora 36 support
-   Support Fedora 38

## 7.4.0 - 2023-03-29

### Major Changes

-   Support Ansible community package 7.4.0
-   Support Ubuntu 23.04

## 7.3.0 - 2023-03-01

-   Support Ansible community package 7.3.0

### Major Changes

## 7.2.0 - 2023-02-01

-   Support Ansible community package 7.2.0

### Major Changes

## 7.1.0 - 2022-12-09

### Major Changes

-   Support Ansible community package 7.1.0

## 7.0.0 - 2022-11-26

### Major Changes

-   Support Ansible community package 7.0.0

## 6.6.0 - 2022-11-10

### Major Changes

-   Support Ansible community package 6.6.0
-   Remove Fedora 35 support
-   Remove openSUSE Leap 15.3 support

## 6.5.0 - 2022-10-14

-   Support Ansible community package 6.5.0

### Major Changes

-   Support Ubuntu 22.10
-   Support Fedora 37

## 6.4.0 - 2022-09-15

### Major Changes

-   Support Ansible community package 6.4.0

## 6.3.0 - 2022-08-24

### Major Changes

-   Support Ansible community package 6.3.0

## 6.2.0 - 2022-08-03

### Major Changes

-   Support Ansible community package 6.2.0

## 6.1.0 - 2022-07-14

### Major Changes

-   Support Ansible community package 6.1.0
-   Remove Ubuntu 21.10 support

## 6.0.0 - 2022-06-22

### Major Changes

-   Support Ansible community package 6.0.0

## 5.9.0 - 2022-06-08

### Major Changes

-   Support Ansible community package 5.9.0

## 5.8.0 - 2022-05-20

### Major Changes

-   Support Ansible community package 5.8.0
-   Remove Fedora 34 support

## 5.7.0 - 2022-04-27

### Major Changes

-   Rename Ansible Role with FQCN
-   Support Ansible community package 5.7.0
-   Support RHEL 9
-   Support CentOS 9 Stream
-   Support openSUSE Leap 15.4

## 5.6.0 - 2022-04-07

### Major Changes

-   Support Ansible community package 5.6.0
-   Support Fedora 36
-   Support Ubuntu 22.04
-   Rename repo for CentOS 8 Stream
-   Support Ansible community package 5.5.0
-   Support Ansible community package 5.4.0

## 5.5.0 - 2022-02-11

### Major Changes

-   Remove Ubuntu 21.04 support
-   Skip package upgrade before running molecule
-   Support Fedora Rawhide
-   Support Debian Testing

## 5.4.0 - 2021-12-31

### Major Changes

-   Remove openSUSE Leap 15.2 support
-   Upgrade minimal Ansible community package support to 4.10

## 5.3.0 - 2021-10-20

### Major Changes

-   Remove Fedora 33 support
-   Remove Ubuntu 20.10 support
-   Support Fedora 35
-   Support Ubuntu 21.10
-   Upgrade minimal Ansible community package support to 4.7.0

## 5.2.0 - 2021-09-19

### Major Changes

-   Install dependencies with package manager
-   Upgrade minimal Ansible community package support to 4.5.0

## 5.1.0 - 2021-07-18

### Major Changes

-   Move systemd service to `/etc/systemd` which generally available
-   Upgrade minimal Ansible community package support to 4.2.0
-   Support Debian 11
-   Support openSUSE Leap 15.3
-   Improve download archive logic

## 5.0.0 - 2021-06-02

### Major Changes

-   Upgrade minimal Ansible support to 4.0.0
-   Support Fedora 34
-   Support Ubuntu 21.04
-   Simplify download archive logic

## 4.7.0 - 2021-03-13

### Major Changes

-   Bugfix [ansible-lint `namespace`](https://github.com/ansible-community/ansible-lint/pull/1451)
-   Bugfix [ansible-lint `no-handler`](https://github.com/ansible-community/ansible-lint/pull/1402)
-   Bugfix [ansible-lint `unnamed-task`](https://github.com/ansible-community/ansible-lint/pull/1413)
-   Simplify Python dependency with system packages
-   Support RHEL 8 with Molecule
-   Support RHEL 7 with Molecule
-   Remove CentOS 8 support
-   Improve HTTP transparent proxy support
-   Improve download archive logic
-   Support CentOS 8 Stream
-   Support openSUSE Tumbleweed
-   Migrate base Vagrant box from `generic/*` to `alvistack/*`

## 4.6.0 - 2020-12-28

### Major Changes

-   Simplify Molecule scenario for vagrant-libvirt
-   Migrate from Travis CI to GitLab CI
-   Support Fedora 33
-   Remove Fedora 32 support
-   Support Ubuntu 20.10
-   Remove redundant tags from tasks

## 4.5.0 - 2020-08-26

### Major Changes

-   Upgrade minimal Ansible Lint support to 4.3.2
-   Support Podman v2.0 `podman.socket` service
-   Upgrade minimal Podman support to 2.0.0
-   Upgrade Travis CI test as Ubuntu Focal based
-   Upgrade minimal Ansible support to 2.10.0
-   Support openSUSE Leap 15.2
-   Remove Ubuntu 19.10 support

## 4.4.0 - 2020-06-04

### Major Changes

-   Install bash completion
-   Install with static binary archive
-   Support Fedora 32
-   Support Debian 10
-   `molecule -s default` with delegated to localhost

## 4.3.0 - 2020-04-22

### Major Changes

-   Template `molecule -s default` with dummy docker driver
-   Support CentOS/RHEL 8
-   Support Ubuntu 20.04
-   Remove Ubuntu 16.04 support
-   Upgrade minimal Molecule support to 3.0.2
-   Install bash completion

## 4.2.0 - 2020-02-24

-   Ininitial release for Ansible 2.9 or higher
-   Support both Ubuntu 18.04/19.10 or RHEL/CentOS 7 or openSUSE Leap 15.1
