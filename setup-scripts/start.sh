#!/bin/bash

cd ~/fabric-dev-servers

# Start Fabric
./startFabric.sh

cd ~/Documents/voting-app-network

# Install & Start Composer Network
composer network install --archiveFile voting-app-network@0.1.0.bna --card PeerAdmin@hlfv1
composer network start --networkName voting-app-network --networkVersion 0.1.0 --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file voting-app-admin.card

# Set up Rest Server
composer-rest-server -c admin@voting-app-network -n never -u true -w true
