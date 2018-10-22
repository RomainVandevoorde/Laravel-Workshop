#!/bin/sh

EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)"
echo "Downloading Composer"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE="$(php -r "echo hash_file('SHA384', 'composer-setup.php');")"

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi

echo "Installing Composer"
php composer-setup.php --quiet
RESULT=$?

echo "Removing installation files"
rm composer-setup.php

if [ $RESULT -ne 0 ]
then
	echo "Failed to install Composer. Error code: $RESULT"
	exit 1
fi

echo "Done !"
