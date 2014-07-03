#!/bin/sh
#
# Python
#
# This installs some of the common dependencies needed (or at least desired)
# using Python.

# Check for pip
if test ! $(which pip); then
  echo "  Installing pip for you."
  sudo easy_install pip
fi

# Install virtualenv & wrapper
if test ! $(which virtualenvwrapper_lazy.sh); then
  echo "  Installing virtualenv and virtualenvwrapper for you."
  sudo pip install virtualenvwrapper
fi
if test ! $(which pygmentize); then
  echo "  Installing Pygments for you."
  sudo pip install Pygments
fi

exit 0
