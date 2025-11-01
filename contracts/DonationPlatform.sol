// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title DonationPlatformCELO
 * @dev Hợp đồng này nhận quyên góp bằng tiền tệ gốc (CELO).
 * Nó sử dụng `msg.value` và các hàm `payable`.
 */
contract DonationPlatformCELO is Ownable {
    // Tổng số tiền đã quyên góp (tính bằng Wei)
    uint256 public totalDonations;

    // Theo dõi số tiền quyên góp của mỗi địa chỉ
    mapping(address => uint256) public donations;

    // Sự kiện khi nhận được quyên góp
    event DonationReceived(address indexed donor, uint256 amount);
    // Sự kiện khi rút tiền
    event FundsWithdrawn(address indexed owner, uint256 amount);

    /**
     * @dev Constructor chỉ gán người sở hữu.
     */
    constructor() Ownable(msg.sender) {
        // Không cần địa chỉ token nữa
    }

    /**
     * @dev Hàm để nhận quyên góp CELO.
     * Bất cứ ai cũng có thể gọi hàm này và gửi CELO kèm theo.
     * 'payable' cho phép hàm này nhận CELO.
     */
    function donate() public payable {
        // msg.value là số lượng CELO (tính bằng Wei) được gửi kèm
        require(msg.value > 0, "Donation amount must be greater than zero");

        // Ghi lại số tiền quyên góp
        donations[msg.sender] += msg.value;
        totalDonations += msg.value;

        // Phát sự kiện
        emit DonationReceived(msg.sender, msg.value);
    }

    /**
     * @dev Cho phép chủ sở hữu (owner) rút toàn bộ CELO
     */
    function withdrawFunds() public onlyOwner {
        // Lấy số dư CELO hiện tại của hợp đồng
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw");

        // Gửi toàn bộ số dư CELO về cho chủ sở hữu
        // Sử dụng .call là cách an toàn nhất để gửi native currency
        (bool success, ) = owner().call{value: balance}("");
        require(success, "Withdrawal failed");

        emit FundsWithdrawn(owner(), balance);
    }

    /**
     * @dev Hàm xem số dư CELO của hợp đồng
     */
    function getBalance() public view returns (uint256) {
        // address(this).balance là số dư CELO gốc
        return address(this).balance;
    }
}
