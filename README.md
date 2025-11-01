# Project Name: Celo Donation
**A transparent, fast, and low-cost decentralized donation platform built on Celo.**

## 👤 Who Am I
* **Name:** Đinh Hoàng Việt
* **Date of Birth:** 21/4/2004
* **University:** Phenikaa

## 💡 Project Details (Description)

Celo Donation is a fully transparent, decentralized donation platform built on the Celo Sepolia Testnet. It provides a simple smart contract (`DonationPlatformCELO.sol`) that allows anyone to donate CELO directly to a cause. The platform ensures 100% transparency, as all transactions are public on the blockchain. It features a secure `withdrawFunds` function that only the project owner can call, eliminating middlemen and high fees associated with traditional charity. This project demonstrates a simple, powerful, and accessible way to handle fundraising, making social good more efficient and trustworthy.

## 🎯 Vision (Impact)

Our vision is to build a new standard of trust for global charitable giving. By leveraging Celo's fast and low-cost network, we empower donors to support causes directly, instantly, and with confidence. This project can create a big impact by removing financial barriers, eliminating opaque administrative fees, and bringing full transparency to the donation process. We envision a future where anyone, anywhere, can contribute to a cause they believe in and know exactly where their money is going, maximizing the power of collective giving.

## ⚡ Personal Story

As a developer from Vietnam, I am Đinh Hoàng Việt. I've seen how centralized financial systems can be slow and costly, especially for social causes. I was inspired by Celo's mission of financial inclusion. I built this donation platform to prove that blockchain can solve real-world problems, creating a tool that is transparent, accessible to everyone, and ensures that contributions directly reach those in need. This project is my first step toward using decentralized technology to build a more trustworthy and equitable future.

## 🗺️ Software Development Plan

This project is focused on the smart contract, with interaction handled via Remix IDE.

1. **Smart Contract (Core Logic):** Develop the `DonationPlatformCELO.sol` contract. Implement an `owner` (variable) for access control, a `totalDonations` (variable) to track cumulative funds, and a `donations` mapping (variable) to track individual givers.

2. **Smart Contract (Functions):** Create a `payable public donate()` function to accept incoming CELO. Develop a `getBalance()` view function to show the contract's current balance.

3. **Smart Contract (Security):** Create a `withdrawFunds` function with an `onlyOwner` modifier, ensuring only the project owner can access the collected CELO. Implement `renounceOwnership` and `transferOwnership` for contract management.

4. **Testing:** Manually test all smart contract functions on the Celo Sepolia Testnet via Remix (e.g., test successful donation, test failed withdrawal by a non-owner, test successful withdrawal by the owner).

5. **Deployment:** Compile the contract and deploy the final version to the Celo Sepolia Testnet.

6. **Documentation:** Create the `README.md` file explaining the project's features and how to interact with it.

## 🛠️ How to Use (Deploy & Interact)

This guide explains how to deploy and interact with the smart contract directly on the Remix IDE.

### Prerequisites

* [MetaMask](https://metamask.io/) browser extension.

* [Celo Sepolia Testnet](https://www.google.com/search?q=https://celo.org/developers/celo-sepolia-testnet) added to your MetaMask.

* Testnet CELO from a [faucet](https://www.google.com/search?q=https://faucet.celo.org/sepolia).

* [Remix IDE](https://remix.ethereum.org/) (for deploying the contract).

### Step 1: Deploy the Smart Contract

1. Go to [Remix IDE](https://remix.ethereum.org/).

2. Create a new file named `DonationPlatformCELO.sol` and paste the contract code into it.

3. Go to the "Solidity Compiler" tab, select a compiler version (e.g., `0.8.20`), and click **Compile**.

4. Go to the "Deploy & Run Transactions" tab.

   * In the **ENVIRONMENT** dropdown, select **"Injected Provider - MetaMask"**.

   * Confirm the connection in your MetaMask wallet (make sure you are on the Celo Sepolia network).

5. Click the **Deploy** button and confirm the transaction in MetaMask.

6. After deployment, look under "Deployed Contracts" in Remix. Find your contract and click the "Copy address" icon. **Save this address.**

### Step 2: Interact with the Contract in Remix

After deployment, your contract will appear at the bottom of the "Deploy & Run Transactions" tab.

**To Read Data (Ai cũng làm được):**

* Click the blue button `totalDonations` to see the total amount ever donated.

* Click the blue button `getBalance` to see the current funds in the contract.

* Click the blue button `owner` to see the wallet address of the fund owner.

**To Donate:**

1. Look at the top of the "Deploy & Run" tab (above the "Deploy" button).

2. Find the **VALUE** input field.

3. Enter the amount of CELO you want to donate (e.g., `0.1`).

4. In the dropdown next to it, select **"Ether"** (this is correct, as CELO uses 18 decimals, just like Ether).

5. Find your deployed contract at the bottom.

6. Click the orange **`donate`** button.

7. Confirm the transaction (which will include the 0.1 CELO) in MetaMask.

8. After the transaction succeeds, click `getBalance` again to see the balance update.

**To Withdraw Funds (Owner):**

1. If you are connected to MetaMask with the *same wallet* that deployed the contract (the `owner`), find your deployed contract.

2. Click the orange **`withdrawFunds`** button.

3. Confirm the transaction in MetaMask.

4. All CELO in the contract will be transferred to your wallet.

## 🎨 Visual Concept (Mascot)

* **Mascot:** Bull

* **Setting:** A bright, futuristic city

* **Keywords:** Creating abundance, new frontiers
