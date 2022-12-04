#! /bin/bash

if (( $EUID != 0 )); then
    echo "Please run as sudo/admin."
    exit
fi
./autogen.sh && ./configure && make
sudo make install
