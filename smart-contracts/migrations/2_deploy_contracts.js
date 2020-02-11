const BlckchnToken = artifacts.require("./BlckchnToken.sol")

const web3 = require("web3-utils")

module.exports = (deployer, network, [owner]) => {
  return deployer
    .then(() => deployer.deploy(BlckchnToken))
    .then(() => BlckchnToken.deployed())
}
