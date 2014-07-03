#!/bin/sh
#
# Python
#
# This installs some of the common dependencies needed (or at least desired)
# using Python.

# Check for pip
if test ! $(which pip)
then
  echo "  Installing pip for you."
  sudo easy_install pip
fi

# Install virtualenv & wrapper
sudo pip install virtualenvwrapper
sudo pip install Pygments

exit 0
