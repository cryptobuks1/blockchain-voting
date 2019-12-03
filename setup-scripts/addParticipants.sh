#!/bin/bash

cd ~/Documents/voting-app-network

# Add 4 'Voters'
composer participant add -c admin@voting-app-network -d '{"$class": "org.byke.voting.voter","voterID": "100585136","fullName": "Bill Gates"}'
composer participant add -c admin@voting-app-network -d '{"$class": "org.byke.voting.voter","voterID": "100585137","fullName": "John Doe"}'
composer participant add -c admin@voting-app-network -d '{"$class": "org.byke.voting.voter","voterID": "100585138","fullName": "Elon Musk"}'
composer participant add -c admin@voting-app-network -d '{"$class": "org.byke.voting.voter","voterID": "100585139","fullName": "Steven Murphy"}'

# Set up all voters with an 'ifVoted' set to false
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.ifVoted","voterID": "100585136","votedOrNot": false}], "targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.ifVoted"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.ifVoted","voterID": "100585137","votedOrNot": false}], "targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.ifVoted"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.ifVoted","voterID": "100585138","votedOrNot": false}], "targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.ifVoted"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.ifVoted","voterID": "100585139","votedOrNot": false}], "targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.ifVoted"}'
