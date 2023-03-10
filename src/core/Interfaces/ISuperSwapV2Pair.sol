// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

interface ISuperSwapV2Pair {
    function initialize(address, address) external;

    function getReserves()
        external
        returns (
            uint112,
            uint112,
            uint32
        );

    function mint(address) external returns (uint256);

    function burn(address) external returns (uint256, uint256);

    function swap(address, uint256, uint256, bytes calldata) external;
}