const ethers = require("ethers");
require('dotenv').config();


const API_URL = process.env.API_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;
const CONTRACT_ADDRESS = process.env.CONTRACT_ADDRESS;

const CONTRACT_ABI = require("../artifacts/contracts/ERC721.sol/MyNFT.json");

let customHttpProvider = new ethers.providers.JsonRpcProvider(API_URL);

async function buyNFT() {
  let wallet = new ethers.Wallet(PRIVATE_KEY, customHttpProvider);
  let signer = new ethers.Contract(CONTRACT_ADDRESS, CONTRACT_ABI.abi, wallet);
  const buy = await signer.buyNFT()
  console.log("Tx is Successfull");
  console.log(buy);
}
buyNFT();