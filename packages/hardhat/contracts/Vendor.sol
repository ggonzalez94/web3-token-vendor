pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "./YourToken.sol";
import "hardhat/console.sol";

contract Vendor is Ownable {
    event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);
    event SellTokens(address seller, uint256 amountOfETH, uint256 amountOfTokens);

    YourToken public yourToken;
    uint256 public constant tokensPerEth = 100;

    constructor(address tokenAddress) {
        yourToken = YourToken(tokenAddress);
    }

    function buyTokens() public payable {
        uint256 amountOfTokens = tokensPerEth * msg.value;
        yourToken.transfer(msg.sender, amountOfTokens);

        emit BuyTokens(msg.sender, msg.value, amountOfTokens);
    }

    function withdraw() public onlyOwner {
        (bool sent, bytes memory data) = (msg.sender).call{
            value: address(this).balance
        }("");
        require(sent, "Failed to send Ether");
    }

    function sellTokens(uint256 _amount) public {
        // Transfer the tokens from the user to the contract
        yourToken.transferFrom(msg.sender, address(this), _amount);

        // Send eth to the user
        uint256 weiToSend = _amount / 100;
        console.log(
            "Transferring to %s %s wei",
            msg.sender,
            weiToSend
        );
        (bool sent, bytes memory data) = (msg.sender).call{value: weiToSend}(
            ""
        );
        require(sent, "Failed to send Ether");

        emit SellTokens(msg.sender, weiToSend, _amount);
    }
}
