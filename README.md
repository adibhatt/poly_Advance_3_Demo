# poly_Advance_3_Demo
# CUSTOM CIRCUIT USING CIRCOM

This repository contains steps for creating a custom circuit using Circom and zkSNARK. 

-- Write a correct circuit.circom implementation

-- Compile the circuit to generate circuit intermediaries

-- Generate a proof using inputs A=0 B=1

-- Deploy a solidity verifier to Mumbai Testnet

-- Call the verifyProof() method on the verifier contract and assert output is true

## Steps

### Clone the Repository
clone this repository onto your own system.

### Install
`npm i`

### Compile
`npx hardhat circom` 

This will generate the **out** file with circuit intermediaries and generate the **CustomCIrcuitVerifier.sol** contract

### Prove and Deploy
`npx hardhat run scripts/deploy.ts`
This script does 4 things  
1. Deploys the MultiplierVerifier.sol contract
2. Generates a proof from circuit intermediaries with `generateProof()`
3. Generates calldata with `generateCallData()`
4. Calls `verifyProof()` on the verifier contract with calldata

With two commands you can compile a ZKP, generate a proof, deploy a verifier, and verify the proof.

### Deploy on Mumbai Testnet
`npx hardhat run scripts/deploy.ts --network mumbai`
1. This script deploys the contract on `polygon mumbai testnet`.
2. Generates the `contract address` which can be used to fetch the transaction on mumbai testnet.
3. `verifyProof()` method is called and returns true or false.

## Authors
Aditya Bhatt 
adityabhatt05101007@gmail.com

## Video Walkthrough
https://www.loom.com/share/670fc6beb1884efda4205e063fdec75f
