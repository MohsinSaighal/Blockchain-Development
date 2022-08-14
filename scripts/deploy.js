const { ethers } = require("hardhat");

async function main (){
    const Nft = await ethers.getContractFactory("Nft")
    
    const NFT = await Nft.deploy()
    await NFT.deployed()

    console.log("Contract deployed to address:",NFT.address)
}
main()
    .then(() => process.exit(0) )
    .catch((error) => {
        console.error(error)
        process.exit(1)
    })

    //0xE1Ba57519a5cCcC45F11802B78771cE7579393e4