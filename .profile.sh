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

# END REGION GIT.

# REGION DOCKER.
function dps() {
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
