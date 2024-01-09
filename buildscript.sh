#!/usr/bin/env bash

if [ $UID -ne 1 ]; then
    echo "Script must be ran as root"
    exit
fi

# Apache is installed OR install apache
command -v apache2 >/dev/null 2>&1 || {apt install apache2}

groupadd administrator
groupadd editors

useradd -c "Web Developer" -g administrator webdev1
useradd -c "Content Editor" -g editors ceditor
useradd -c "Test User" testusr



sed /etc/apache2/apache.conf
