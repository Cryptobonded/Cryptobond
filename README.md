# Project Description

Cryptobond is a bond launchpad that increases the liquidity of DAOs assets.

Cryptobond is a type of NFT that allows native tokens to be locked in and vested over time. It provides the protocol with a tool for distribution management to lock any digital asset and use it without coding.

## Way

- Allocation management: By adopting Cryptobond, there is no need to develop additional code for projects to manage their allocations, while promoting an open, transparent, and non-fraudulent on-chain OTC market for trading and lending allocations and their derivatives.
- Fundraising: While raising funds for public financing, projects can sell their locked distribution represented by Cryptobond to investors as initial token assets, which is the most ideal fundraising method for any stage of development.
- Community building: Due to the significant reduction in the cost of lock distribution, Cryptobond is more suitable for airdrops or liquidity mining, and a stronger user value network has been established, rather than spot currency speculation.
- Completely change the distribution transaction in DeFi, as revolutionary innovation of management, Cryptobond, provides liquidity for any locked digital assets through NFT. For the scenarios of fundraising and community building, a permissionless on-chain distribution trading market is formed.

## Advantages

- Utilize DAO's credit. The DAO's credit rating system established by Cryptobond can help them obtain such under-collateralized loans through their own credit.
- Sustainable liquidity. By issuing bond certificates, DAO can obtain stable liquid assets without any liquidation risk before settlement, no matter how much the market affects its token price.
- Low cost.By offering investors profitable returns and/or guaranteed interests, bond credentials significantly reduce DAO financing costs from variable, expensive yield farming, or token sales, to a fixed amount.

## Advanced Sample Hardhat Project

This project demonstrates an advanced Hardhat use case, integrating other tools commonly used alongside Hardhat in the ecosystem.

The project comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts. It also comes with a variety of other tools, preconfigured to work with the project code.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
REPORT_GAS=true npx hardhat test
npx hardhat coverage
npx hardhat run scripts/deploy.ts
TS_NODE_FILES=true npx ts-node scripts/deploy.ts
npx eslint '**/*.{js,ts}'
npx eslint '**/*.{js,ts}' --fix
npx prettier '**/*.{json,sol,md}' --check
npx prettier '**/*.{json,sol,md}' --write
npx solhint 'contracts/**/*.sol'
npx solhint 'contracts/**/*.sol' --fix
```

## Etherscan verification

To try out Etherscan verification, you first need to deploy a contract to an Ethereum network that's supported by Etherscan, such as Ropsten.

In this project, copy the .env.example file to a file named .env, and then edit it to fill in the details. Enter your Etherscan API key, your Ropsten node URL (eg from Alchemy), and the private key of the account which will send the deployment transaction. With a valid .env file in place, first deploy your contract:

```shell
hardhat run --network ropsten scripts/deploy.ts
```

Then, copy the deployment address and paste it in to replace `DEPLOYED_CONTRACT_ADDRESS` in this command:

```shell
npx hardhat verify --network ropsten DEPLOYED_CONTRACT_ADDRESS "Hello, Hardhat!"
```

## Performance optimizations

For faster runs of your tests and scripts, consider skipping ts-node's type checking by setting the environment variable `TS_NODE_TRANSPILE_ONLY` to `1` in hardhat's environment. For more details see [the documentation](https://hardhat.org/guides/typescript.html#performance-optimizations).
