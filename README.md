# ERC-721

Hardhat frame work is used to deploy this ERC-721 Smart Contract
## SMART CONTRACTS MADE SWEETER


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
 mkdir Nft-tutorial
```
Step#3:

Change the Directory to the folder **Nft-tutorial** 
```bash
cd Nft-tutorial
```






## Installation

Use the package manager [npm](https://www.npmjs.com/) to install Truffle.
Truffle will Install With Node.js Installation.

```bash
$ npm install --save dev hardhat
```
After Successfull Completion of Truffle Installation Use Following Command in Installation Directory to Create Truffle Project

``bash 
$ npm install @openzeppelin/contracts
```bash
$ npm install ethers
```
Create a sample project by running this command
```bash
npx hardhat
```

In the Case of Cloning this Repo just run the following Command:

```bash
$ npm install
```
This will Install all dependencies used in this project


## Contract Compilation
```bash
$ npx hardhat compile
```
## Update Your .env file accordingly


API_URL = ''

PRIVATE_KEY = ''

## Deploy Contract to Live Network
```bash
$ npx hardhat --network goerli run scripts/deploy.js
```

## End of Tutorial

If You Found Error or Mistake in This Tutorial Feel Free to Reach me at [Mohsin Tahir](mohsint908@gmail.com)

## License
[MIT](https://choosealicense.com/licenses/mit/)

