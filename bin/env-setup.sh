#!/usr/bin/env bash
set -e

PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. ${HOME}/.bash_profile
. ${PWD}/env-setup-helper.sh

### install homebrew packages ###
install_homebrew
install_brew_package git
install_brew_cask_package docker
install_brew_package ruby
install_brew_package travis
install_brew_package node
install_brew_cask_package minikube
install_brew_cask_package virtualbox

### install misc ###
install_gcloud_sdk

####
# Add these lines to ~/.bash_profile
#
# brew: install ruby
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#
# install gcloud sdk
#export PATH="/opt/google-cloud-sdk/bin:$PATH"
#
# sdkman - THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="${HOME}/.sdkman"
#[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
####
