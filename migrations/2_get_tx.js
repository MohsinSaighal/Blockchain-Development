const Web3 = require('web3')
require("dotenv").config({ path: __dirname + "/./../.env" });

const rpcURL = process.env.INFURA_ID;
const web3 = new Web3(rpcURL)

const contract_address = process.env.smart_address
const contract_abi = require("../build/contracts/NadraSystem.json")

const contract = new web3.eth.Contract(contract_abi.abi,contract_address)
async function getdetails(){
const details = await contract.methods.getAllDetails().call();
console.log(details)
}
getdetails()