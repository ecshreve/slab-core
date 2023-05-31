# slab-core

## overview

this repo contains terraform and ansible code to set up a private docker registry on a proxmox vm

## terraform

### main.tf

- create proxmox vm running ubuntu 20.04
- tfstate is stored in terraform cloud
- uses a custom terraform module from private registry in terraform cloudg

## ansible

### playbook: registry-setup.yml

- set up a docker host
- deploy private registry and ui

### role: docker

- install and configures docker

### role: general

- install apt packages and mount nfs share
- the nfs share is a shared folder on a synology nas

### role: registry-image

- pull a docker image, tag it, and push it to private registry

## dev environment

macbook pro -> vscode - insiders ---> remote ssh -- ubuntu vm --> docker --> devcontainer

using a devcontainer built from docker image on private dockerhub repo