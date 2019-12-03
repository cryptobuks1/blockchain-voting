#!/bin/bash

cd ~/Documents/voting-app-network

# Add the 6 Political Parties
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.candidateVote","politicalParty": "PPC","totalVote": 0}],"targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.candidateVote"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.candidateVote","politicalParty": "BQ","totalVote": 0}],"targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.candidateVote"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.candidateVote","politicalParty": "NDP","totalVote": 0}],"targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.candidateVote"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.candidateVote","politicalParty": "Green","totalVote": 0}],"targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.candidateVote"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.candidateVote","politicalParty": "Liberal","totalVote": 0}],"targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.candidateVote"}'
composer transaction submit -c admin@voting-app-network -d '{"$class": "org.hyperledger.composer.system.AddAsset","resources": [{"$class": "org.byke.voting.candidateVote","politicalParty": "Conservative","totalVote": 0}],"targetRegistry": "resource:org.hyperledger.composer.system.AssetRegistry#org.byke.voting.candidateVote"}'
