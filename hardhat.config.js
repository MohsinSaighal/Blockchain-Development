/** @type import('hardhat/config').HardhatUserConfig */
require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();
require("@nomiclabs/hardhat-ethers")
const provider = process.env.API_URL
const privatekey = process.env.PRIVATE_KEY

module.exports = {
  solidity: "0.8.9",
  defaultNetwork: "goerli",
  networks: {
    hardhat: {},
      goerli: {
        url: provider,
        accounts: [`0x${privatekey}`]
    }
  },
};
