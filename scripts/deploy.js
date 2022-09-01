const {ethers} = require ("hardhat");
async function main(){
    //Deploy fungible Smart Contract
    const FungibleToken = await ethers.getContractFactory('IEC');
    const FT = await FungibleToken.deploy();
    await FT.deployed();
    //Deploy Non-Fungible Smart Contract
    const NonFungible = await ethers.getContractFactory('MyNFT');
    const NFT= await NonFungible.deploy(FT.address);
    await NFT.deployed();

    console.log("Fungible Token:" + FT.address );
    console.log("Non-Fungible Token:"+ NFT.address);

}
main()
.then(()=>process.exit())
.catch(error => {
    console.error(error);
    process.exit(1);
})



