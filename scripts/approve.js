const ethers = require("ethers");
require('dotenv').config();


const API_URL = process.env.API_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;
const CONTRACT_ADDRESS = process.env.FTCONTRACT;

const CONTRACT_ABI = require("../artifacts/contracts/ERC20.sol/IEC.json");

let customHttpProvider = new ethers.providers.JsonRpcProvider(API_URL);

async function approve(spender,amount) {
  let wallet = new ethers.Wallet(PRIVATE_KEY, customHttpProvider);
  let signer = new ethers.Contract(CONTRACT_ADDRESS, CONTRACT_ABI.abi, wallet);
  const buy = await signer.approve(spender,amount)
  console.log("Tx is Successfull");
  console.log(buy);
}
approve("0x95188100Fe5BE9f9B6f3a8c6D27Baf085BEb2Af4",
       ethers.utils.parseEther("0.5"),
    );