const Tx = require('ethereumjs-tx').Transaction

const Web3 = require('web3')
require("dotenv").config({ path: __dirname + "/./../.env" });
const web3 = new Web3(process.env.INFURA_ID)

const abi = require('../build/contracts/NadraSystem.json')
const contractAddress = process.env.smart_address
const myAccount = process.env.accounts
const privateKey1 =Buffer.from(process.env.PRIVATE_KEY, 'hex')

const contract = new web3.eth.Contract(abi.abi, contractAddress,{
    from: myAccount,
})
    web3.eth.getTransactionCount(myAccount, (err, txCount) => {
    // Build the transaction
    const txObject = {
        nonce:    web3.utils.toHex(txCount),
        gasLimit: web3.utils.toHex(1000000),
        gasPrice: web3.utils.toHex(web3.utils.toWei('10', 'gwei')),
        data: contract.methods.addDetails("mohsin", "42401","karachi",42409).encodeABI(),
        from: myAccount,
        to:contractAddress,
    }

    // Sign the transaction
    const tx = new Tx(txObject, { chain: 'rinkeby' });
    tx.sign(privateKey1)
    const serializedTx = tx.serialize()

    // Broadcast the transaction
    web3.eth.sendSignedTransaction('0x' + serializedTx.toString('hex')).
    on('receipt', console.log)
})