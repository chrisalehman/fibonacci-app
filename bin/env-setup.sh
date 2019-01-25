#!/usr/bin/env bash
set -e

PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. ${HOME}/.bash_profile
. ${PWD}/env-setup-pkg-mgr.sh

### install homebrew packages ###
install_homebrew
install_brew_package git
install_brew_cask_package docker
install_brew_package ruby
install_brew_package travis
install_brew_package node

# cache git creds for 24 hours
git config credential.helper 'cache --timeout=86400'

# one-time encryption of travis client secret for gcp
# create credentials from gcp
# travis encrypt-file <client-secret.json> --add

####
# Add these lines to ~/.bash_profile
#
# brew: install ruby
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#
# install gcloud - download from gcp
#export PATH="/opt/google-cloud-sdk/bin:$PATH"
#
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/Users/admin/.sdkman"
#[[ -s "/Users/admin/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/admin/.sdkman/bin/sdkman-init.sh"
####
