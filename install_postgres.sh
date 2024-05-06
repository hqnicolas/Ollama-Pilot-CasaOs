#!/bin/bash
sudo apt-get install postgresql -y
sudo systemctl enable postgresql
sudo service postgresql start
