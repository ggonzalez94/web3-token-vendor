## ๐ฉ Challenge 2: ๐ต Token Vendor ๐ค

> This is a project based on [Speed Run Ethereum Challenges](https://speedrunethereum.com/) and uses [Scaffold-Eth](https://github.com/scaffold-eth/scaffold-eth) for the structure of the project.  

> ๐บ You can see it live and play with it on RInkeby [here](https://tokenvendor.surge.sh/)

## What does it do?
> ๐ฆธ The project has 2 contracts, **YourToken.sol** that lets you create your own decentralized, digital currency(an [ERC20 token](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/)) and **Vendor.sol** that creates an unstoppable vending machine that will buy and sell the currency.

## ๐  Quick Start - Deploy to local network
    This steps allow you to deploy to a local hardhat network.  

> Clone the repo  
``` bash 
git clone https://github.com/ggonzalez94/web3-token-vendor.git
```

> Install packages
``` bash 
yarn install
```

> Run the projects and deploy the Smart Contracts
```bash
yarn start   (react app frontend)
yarn chain   (hardhat backend)
yarn deploy  (to compile, deploy, and publish your contracts to the frontend)
```
---
> ๐ป View your frontend at http://localhost:3000/  
---
> ๐ฉโ๐ป Rerun `yarn deploy --reset` whenever you want to deploy new contracts to the frontend.
---
#### ๐งช Test it!
``` bash 
yarn test
```

## ๐ Deploy to live network
If you want to deploy to a live network such as rinkeby you can follow these steps:  

๐ก Edit the `defaultNetwork` to [your choice of public EVM networks](https://ethereum.org/en/developers/docs/networks/) in `packages/hardhat/hardhat.config.js`

๐ฉโ๐ You will want to run `yarn account` to see if you have a **deployer address**

๐ If you don't have one, run `yarn generate` to create a mnemonic and save it locally for deploying.

โฝ๏ธ You will need to send ETH to your **deployer address** with your wallet.

 >  ๐ Run `yarn deploy` to deploy your smart contract to a public network (selected in hardhat.config.js)
---