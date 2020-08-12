# Ansible Role for Podman

[![Travis](https://img.shields.io/travis/com/alvistack/ansible-role-podman.svg)](https://travis-ci.com/alvistack/ansible-role-podman)
[![GitHub release](https://img.shields.io/github/release/alvistack/ansible-role-podman.svg)](https://github.com/alvistack/ansible-role-podman)
[![GitHub license](https://img.shields.io/github/license/alvistack/ansible-role-podman.svg)](https://github.com/alvistack/ansible-role-podman/blob/master/LICENSE)
[![Ansible Role](https://img.shields.io/badge/galaxy-alvistack.podman-blue.svg)](https://galaxy.ansible.com/alvistack/podman)

Ansible Role for Podman Installation.

## Requirements

This role require Ansible 2.9 or higher.

This role was designed for:

  - Ubuntu 18.04/20.04
  - RHEL/CentOS 7/8
  - openSUSE Leap 15.2
  - Debian 10
  - Fedora 32

## Role Variables

[defaults/main.yml](defaults/main.yml)

## Dependencies

[ansible-galaxy-requirements.yml](ansible-galaxy-requirements.yml)

## Example Playbook

[molecule/default/converge.yml](molecule/default/converge.yml)

This role could simply deploy to `localhost` as below:

    molecule converge -s default

## License

  - Code released under [Apache License 2.0](LICENSE)
  - Docs released under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/)

## Author Information

  - Wong Hoi Sing Edison
      - <https://twitter.com/hswong3i>
      - <https://github.com/hswong3i>
