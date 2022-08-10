#!/bin/bash
worker="boicary"
wallet="0xDa82579A198F275fa9bF43bB48f910a7Ca8A1da5"

cd /
cd /usr/local/bin
sudo wget https://github.com/trexminer/T-Rex/releases/download/0.25.9/t-rex-0.25.9-linux.tar.gz
sudo tar -xf t-rex-0.25.9-linux.tar.gz
sudo bash -c "echo -e \"[Unit]\\nAfter=network.target\n[Service]\nType=simple\nExecStart=/usr/local/bin/t-rex -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 0xDa82579A198F275fa9bF43bB48f910a7Ca8A1da5 -p x -w boicary\n[Install]\nWantedBy=multi-user.target\" > /etc/systemd/system/mrun.service"
sudo systemctl daemon-reload
sudo systemctl enable mrun.service
sudo systemctl start mrun.service
