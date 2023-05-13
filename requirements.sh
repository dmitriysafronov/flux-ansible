#!/usr/bin/env bash

set -e

# This throws an error with error message
die () {
  test -n "$1" && echo "$1" || echo "Error (no message specified)!"
  exit 1
}

# This installs requirements from files
requirements () {
  test -z "$1" && die "No file specified!"
  ansible-galaxy install -r "$1"
}

requirements roles/sops_age/requirements.yml
requirements roles/bootstrap/requirements.yml
