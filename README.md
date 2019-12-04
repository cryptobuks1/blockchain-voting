# Hyperledger Voting System

The project idea that we have come up with is a blockchain-based voting application. It provides the voters a hassle-free, convenient and secure way to cast their vote, while also assuring that the system is secure from malicious cyber activities. 

## Setup Environment


You need to be running a linux system or Ubuntu 14.04 or 16.04 preferably  
1) Install Git from here '[https://git-scm.com/downloads](https://l.messenger.com/l.php?u=https%3A%2F%2Fgit-scm.com%2Fdownloads&h=AT1GIQbDdhCuCCLWaVRx8misY2CIWhzJVI2Fn7cNYe_dMpoRMwNnM4-qh9gJe-MttUCzerx7NjLISy080yj6d5xYw_XjRTL4Ufmpn3criecxRzSJKkBQ0Kxzafk4vpkhntpVvw)'  
2) Install cURL from here '[https://curl.haxx.se/download.html](https://l.messenger.com/l.php?u=https%3A%2F%2Fcurl.haxx.se%2Fdownload.html&h=AT1GIQbDdhCuCCLWaVRx8misY2CIWhzJVI2Fn7cNYe_dMpoRMwNnM4-qh9gJe-MttUCzerx7NjLISy080yj6d5xYw_XjRTL4Ufmpn3criecxRzSJKkBQ0Kxzafk4vpkhntpVvw)'  
3) Install Docker and Docker Composer  
4) Install Node.js '[https://nodejs.org/en/download/](https://l.messenger.com/l.php?u=https%3A%2F%2Fnodejs.org%2Fen%2Fdownload%2F&h=AT1GIQbDdhCuCCLWaVRx8misY2CIWhzJVI2Fn7cNYe_dMpoRMwNnM4-qh9gJe-MttUCzerx7NjLISy080yj6d5xYw_XjRTL4Ufmpn3criecxRzSJKkBQ0Kxzafk4vpkhntpVvw)'  
5) Install NPM  
6) Install Python 2.7  
  
To make it easier you can downlaod the prerequisites script after installing git and cURL which will install the reamaining set of tools.  
#### Run the command: 
<code>curl -O [https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh](https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh)</code>

Now give the file executable access by running the following command <code>chmod u+x prereqs-ubuntu.sh</code>

Now run the script using the command <code>./prereqs-ubuntu.sh</code>

If all went well you should not get any errors. If you have gotten errors then you will have to manually install the tool that was not installed.

## Execution

We made it simple by creating some easy to use bash scripts. 

1) Run `start.sh` from the setup-scripts folder.
2) Run `npm start` in the voting-angular-app.
3) To populate the network with our pre-defined data, run `addAssets.sh` and `addParticipants.sh`. *(Optional)*
4) To run Composer playground, run `composer-playground`. *(Optional)*

And that is it! Now if you go to `localhost:4200`, you should be able to view the front-end webpage. If you want to view the Composer playground, go to `localhost:8080`.
