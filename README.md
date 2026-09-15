# Simple Savings Vault

A simple Ethereum smart contract built with Solidity and Foundry.

## About

The Savings Vault allows users to deposit ETH into the contract and withdraw their own deposited funds.

Each user's balance is tracked separately using their wallet address.

## Features

- Deposit ETH
- Track individual user balances
- Withdraw deposited ETH
- Prevent users from withdrawing more than their balance
- Tested with Foundry

## Project Structure

```text
src/
└── SavingsVault.sol

test/
└── SavingsVault.t.sol

script/
└── SavingsVault.s.sol
```

## Getting Started

Clone the repository and enter the project directory:

```bash
git clone https://github.com/Ade-kg007/simple-savings-vault.git
cd simple-savings-vault
```

Build the project:

```bash
forge build
```

Run the tests:

```bash
forge test
```

## Technologies

- Solidity
- Foundry
- Ethereum

## Status
