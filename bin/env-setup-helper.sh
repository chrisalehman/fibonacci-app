#!/usr/bin/env bash
set -e

### SDKMAN ###

function install_sdkman() {
    if [ -z "${SDKMAN_DIR}" ]; then
        curl -s "https://get.sdkman.io" | bash
        . "$HOME/.sdkman/bin/sdkman-init.sh"
    else
        echo "Updating sdkman..."
        sdk update
    fi
    sdk version
}

function install_sdkman_package() {
    if [ -z "`sdk ls $1 | grep '>' | grep '*'`" ]; then
        sdk install $1
    else
        sdk current $1
    fi
}

### HOMEBREW ###

function install_homebrew() {
    if [ -z "`which brew`" ]; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "Updating homebrew..."
        brew update
    fi
}

function install_brew_package() {
    if [ -z "`brew ls $1 --versions 2> /dev/null`" ]; then
        brew install $1
    else
        brew ls $1 --versions
    fi
}

function install_brew_cask_package() {
    if [ -z "`brew cask ls $1 --versions 2> /dev/null`" ]; then
        brew cask install $1
    else
        brew cask ls $1 --versions
    fi
}

### GCLOUD SDK ###

function install_gcloud_sdk() {
    GCLOUD_SDK_NAME='google-cloud-sdk'
    if [ -z "`which gcloud`" ]; then
        GCLOUD_SDK_URL=`wget -qO- https://cloud.google.com/sdk/docs/quickstart-macos | grep -Eo "(http|https)://[\da-z./?A-Z0-9\D=_-]*" | grep ${GCLOUD_SDK_NAME} | grep 64`
        wget -c ${GCLOUD_SDK_URL} -O - | tar -xz
        sudo rm -rf /usr/local/${GCLOUD_SDK_NAME} 2> /dev/null
	sudo mv ./${GCLOUD_SDK_NAME} /usr/local
        echo "Google Cloud SDK installed in /usr/local/${GCLOUD_SDK_NAME}."
    else
        gcloud -v
    fi
}
