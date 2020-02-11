pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract BlckchnToken is ERC20, ERC20Detailed, Ownable {

  constructor() ERC20Detailed("BlckchnToken", "BLCK", 0) public {
    _mint(msg.sender, 1000000 * 10 ** uint256(0));
  }
}
