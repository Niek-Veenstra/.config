#!/bin/bash

#REGION SHELL-UTIL
function reload() {
  source "$HOME/.zshrc"
}

function profile() {
  nvim "$HOME/.config/.profile.sh"
}

function c() {
  clear
}

function iptables() {
  sudo iptables $@
}
#END REGION SHELL-UTIL

# REGION GIT.
function branch() {
  git branch $@
}

function push() {
  git push $@
}

function commit() {
  git commit $@
}

function add() {
  git add $@
}

function submodules() {
  git submodule init
  git submodule update --recursive --remote
}

function pull() {
  git pull $@
}

function checkout() {
  git checkout $@
}
# END REGION GIT.

# REGION DOCKER.
function dsh() {
  docker exec -it $1 sh
}

function dls() {
  docker ps
}

function dkill() {
  docker container stop $@
}

function dcu() {
  docker compose up -d
}

function dis() {
  docker container inspect $@
}
# END REGION DOCKER
