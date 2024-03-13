// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract DynamicTokenSwap {
    function swap(address token1, address token2, uint amount) public {
        uint token2Amount = getExchangeRate(token1, token2);

        require(token2Amount > 0, "Invalid exchange rate");

        IERC20(token1).transferFrom(msg.sender, address(this), amount);
        IERC20(token2).transfer(msg.sender, token2Amount);
    }

    function getExchangeRate(address token1, address token2) public view returns (uint) {

        //find exchang rate somehow and return
        return(2);
    }
}
