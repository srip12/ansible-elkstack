#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rm -rf get-pip.py
sudo pip install docker
