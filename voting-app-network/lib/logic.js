/*
 *@param {org.byke.voting.vote} vote
 *@transaction
 */

async function vote(vote) {
    //if voter has not voted yet
    if (!vote.ifVotedAsset.votedOrNot) {
	    //increase the total count of the political party being voted for by 1
        vote.candidateVoteAsset.totalVote = vote.candidateVoteAsset.totalVote + 1;
        return getAssetRegistry('org.byke.voting.candidateVote')
            .then(function (assetRegistry) {
                return assetRegistry.update(vote.candidateVoteAsset); //update the network registry
            })
            .then(function () {
                return getAssetRegistry('org.byke.voting.ifVoted')
                    .then(function (assetRegistry) {
                        vote.ifVotedAsset.votedOrNot = true; //set the vote boolean to true so the voter cannot vote again
                        return assetRegistry.update(vote.ifVotedAsset); //update the netowrk registry with the new value
                    })
            });
    } else {
        throw new Error('Vote already submitted!'); //give error if voter tries to vote again if they already voted
    }
}