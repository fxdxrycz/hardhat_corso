import { ethers } from "hardhat";



async function main() {
 
  const CoinFlipAttackerFactory = await ethers.getContractFactory("CoinFlipAttacker");
  const CoinFlipAttacker = await CoinFlipAttackerFactory.deploy();

  await CoinFlipAttacker.deployed();

  console.log(
    `CoinFlipAttacker with deployed to ${CoinFlipAttacker.address}`
  );
  

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
