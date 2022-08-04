# Truffle Tutorial

## SMART CONTRACTS MADE SWEETER

A world class development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM), aiming to make life as a developer easier

## Setting up the Environment

You can Skip Step#1  If You have Already Node.js Installed **>=16.0**

Step#1:

Make Sure You have Node.js Installed in Your System to Use Npm

Windows User can Install Node.js By Clicking Here [Node.js](https://nodejs.org/en/)

### Linux

#### Ubuntu

If You have Linux Installed in Your System You can Use Following Command to Install Node.js

```bash
sudo apt update
sudo apt install curl git
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Step#2:

Create a Folder in Local Directory By Using Following Command 

```bash
 mkdir truffle-tutorial
```
Step#3:

Change the Directory to the folder **truffle-tutorial** 
```bash
cd truffle-tutorial
```






## Installation

Use the package manager [npm](https://www.npmjs.com/) to install Truffle.
Truffle will Install With Node.js Installation.

```bash
$ npm install -g truffle
```
After Successfull Completion of Truffle Installation Use Following Command in Installation Directory to Create Truffle Project

```bash
truffle init
```

In the Case of Cloning this Repo just run the following Command:

```bash
$ npm install
```
This will Install all dependencies used in this project


## Contract Compilation
```bash
$ truffle compile
```
## Update Your .env file accordingly

mnemonic = ''

INFURA_ID = ''

accounts = ''

smart_address = ''

PRIVATE_KEY = ''

## Deploy Contract to Live Network
```bash
$ truffle migrate --network rinkeby
```
## Send Transaction 
To Add Details in function AddDetails() You can run the 2_get_tx.js by Running this Command
```bash
node 2_get_tx.js
```
## Get Transaction
To Get the Details Added You Can Run the following Command to get Data from getAllDetails()

```bash
node 3_send_tx.js
```

## End of Tutorial

If You Found Error or Mistake in This Tutorial Feel Free to Reach me at [Mohsin Tahir](mohsint908@gmail.com)

## License
[MIT](https://choosealicense.com/licenses/mit/)
