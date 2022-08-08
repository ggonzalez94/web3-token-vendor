## 🚩 Challenge 2: 🏵 Token Vendor 🤖

> This is a project based on [Speed Run Ethereum Challenges](https://speedrunethereum.com/) and uses [Scaffold-Eth](https://github.com/scaffold-eth/scaffold-eth) for the structure of the project.  

> 📺 You can see it live and play with it on RInkeby [here](https://tokenvendor.surge.sh/)

## What does it do?
> 🦸 The project has 2 contracts, **YourToken.sol** that lets you create your own decentralized, digital currency(an [ERC20 token](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/)) and **Vendor.sol** that creates an unstoppable vending machine that will buy and sell the currency.

## 🛠 Quick Start - Deploy to local network
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
> 💻 View your frontend at http://localhost:3000/  
---
> 👩‍💻 Rerun `yarn deploy --reset` whenever you want to deploy new contracts to the frontend.
---
#### 🧪 Test it!
``` bash 
yarn test
```

## 🚀 Deploy to live network
If you want to deploy to a live network such as rinkeby you can follow these steps:  

📡 Edit the `defaultNetwork` to [your choice of public EVM networks](https://ethereum.org/en/developers/docs/networks/) in `packages/hardhat/hardhat.config.js`

👩‍🚀 You will want to run `yarn account` to see if you have a **deployer address**

🔐 If you don't have one, run `yarn generate` to create a mnemonic and save it locally for deploying.

⛽️ You will need to send ETH to your **deployer address** with your wallet.

 >  🚀 Run `yarn deploy` to deploy your smart contract to a public network (selected in hardhat.config.js)
---