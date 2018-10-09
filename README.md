# openlabsblr
Sample code for Bangalore Open Labs


## Ethereum Dev Environment Setup

Follow instructions from this learning guide: https://theblockchainu.com/guide/710de4e9-a7b3-4f72-b406-fba27b201861

## Compile & Deploy

To compile run the following command from your terminal.

```javascript
$ truffle compile
Compiling ./contracts/Migrations.sol...
Compiling ./contracts/Openlab.sol...

Writing artifacts to ./build/contracts
```

Ignore any warnings that may show up as part of compiling the code for now.

To migrate the compiled files to the blockchain, run the migrate command.

```javascript
$ truffle migrate
Using network 'development'.

Running migration: 1_initial_migration.js
  Deploying Migrations...
  ... 0x5b0e8ba1143f5ced912a1f7709ed10055611acd9276f9d1314492ce6d4dc88d7
  Migrations: 0x82d50ad3c1091866e258fd0f1a7cc9674609d254
Saving successful migration to network...
  ... 0x289ae161be6b6cdcea57476a531d45daf5e590a20fecca05e88e1bf699ba2558
Saving artifacts...
Running migration: 2_deploy.js
  Running step...
  Deploying Openlab...
  ... 0x14c8a2046be709212dcecb81003467d9126df341335030a1b5c88df868a2d95b
  Openlab: 0xeec918d74c746167564401103096d45bbd494b74
Saving successful migration to network...
  ... 0x7481b74f273c73b55d9bd16286d7ea81f72589feb840275a0731ca03f1e7f7b9
Saving artifacts...
```

Take note of the deployed address of your smart contract from the output logs in terminal.
In the example above, 0xeec918d74c746167564401103096d45bbd494b74 is the address of our contract openLab deployed on the local blockchain.

We will be using this address to get an instance of the contract in the future.

## Test the smart contracts

We can quickly test the smart contracts we just deployed using web3.js from Truffle console.

Let us first get an instance of the smart contract using the address we noted from the previous step.
```
$ truffle console
truffle(development)> var openLab = Openlab.at('0xeec918d74c746167564401103096d45bbd494b74')
undefined
```

Now that we have the instance, we can use it to call the functions we wrote within the smart contract.

We start by checking the number of clicks.

```
truffle(development)> openlab.getClicks()
BigNumber { s: 1, e: 0, c: [ 0 ] }
```

As the number is 0, let us add a click to the count.

```
truffle(development)> openlab.addClick()
{ tx: '0xbbbee7e7fcb8fe8bc3ab600252732df8c962daf8efbc3423a767f25c9da1bd44',
  receipt:
   { transactionHash: '0xbbbee7e7fcb8fe8bc3ab600252732df8c962daf8efbc3423a767f25c9da1bd44',
     transactionIndex: 0,
     blockHash: '0x3ea54a7c12a6cad4f1fe498f0e1afe99ec8eaabf935425c842de8330e3c42e57',
     blockNumber: 54,
     gasUsed: 41936,
     cumulativeGasUsed: 41936,
     contractAddress: null,
     logs: [],
     status: 1 },
  logs: [] }
```

Let us verify the number of clicks again.

```
truffle(development)> openlab.getClicks()
BigNumber { s: 1, e: 0, c: [ 1 ] }
```

As we can see, the number has increased to 1.

So, in these simple steps, we have written a smart contract, deployed it to the blockchain and accessed its functions using its instance.

## Try other use cases

You can now try participating in one of our more complicated bounties:

1. https://theblockchainu.com/bounty/a5d9f0b4-61fe-45f2-af60-471945588816
2. https://theblockchainu.com/bounty/13a1a7d8-9e51-4d63-ac5c-b2cbf84064ad