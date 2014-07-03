#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew); then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
if [ -f /usr/local/opt/coreutils ]; then
  brew install coreutils
fi
if test ! $(which grc); then
  echo "  Installing grc for you."
  brew install grc
fi
if test ! $(which spark); then
  echo "  Installing spark for you."
  brew install spark
fi
if test ! $(which wget); then
  echo "  Installing wget for you."
  brew install wget
fi
if test ! $(which git && git --version | grep "git version 2"); then
  echo "  Installing git 2.0 for you."
  brew upgrade git
fi
if test ! $(which ack); then
  echo "  Installing ack for you."
  brew install ack
fi

exit 0
