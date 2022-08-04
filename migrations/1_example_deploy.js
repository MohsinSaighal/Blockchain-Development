const NadraSystem = artifacts.require("NadraSystem");

module.exports = function (deployer,network,accounts) {
  deployer.deploy(NadraSystem,{from:accounts[1]});
};

//0x038Dc45255029fd13aAD4D5F4D1847fCa9bae211 -contract address