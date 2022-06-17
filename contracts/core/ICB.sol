// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

interface ICB /* is IERC721 */{
    event PartialTransfer(address indexed from, address indexed to, uint256 indexed tokenId, uint256 targetTokenId,
        uint256 transferUnits);
    event Split(address indexed owner, uint256 indexed tokenId, uint256 newTokenId, uint256 splitUnits);
    event Merge(address indexed owner, uint256 indexed tokenId, uint256 indexed targetTokenId, uint256 mergeUnits);
    event ApprovalUnits(address indexed owner, address indexed approved, uint256 indexed tokenId, uint256 approvalUnits);

    function slotOf(uint256 tokenId)  external view returns(uint256 slot);

    function balanceOfSlot(uint256 slot) external view returns (uint256 balance);
    function tokenOfSlotByIndex(uint256 slot, uint256 index) external view returns (uint256 tokenId);
    function unitsInToken(uint256 tokenId) external view returns (uint256 units);

    function approve(address to, uint256 tokenId, uint256 units) external;
    function allowance(uint256 tokenId, address spender) external view returns (uint256 allowed);

    function split(uint256 tokenId, uint256[] calldata units) external returns (uint256[] memory newTokenIds);
    function merge(uint256[] calldata tokenIds, uint256 targetTokenId) external;

    function transferFrom(address from, address to, uint256 tokenId,
        uint256 units) external returns (uint256 newTokenId);

    function safeTransferFrom(address from, address to, uint256 tokenId,
        uint256 units, bytes calldata data) external returns (uint256 newTokenId);

    function transferFrom(address from, address to, uint256 tokenId, uint256 targetTokenId,
        uint256 units) external;

    function safeTransferFrom(address from, address to, uint256 tokenId, uint256 targetTokenId,
        uint256 units, bytes calldata data) external;
}

interface ICBReceiver {
    function onICBReceived(address operator, address from, uint256 tokenId,
        uint256 units, bytes calldata data) external returns (bytes4);
}