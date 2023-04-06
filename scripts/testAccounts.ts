import { ethers } from "hardhat";

async function main() {
  
  const [owner, otherAccount] = await ethers.getSigners();

  console.log("owner", owner.address);
  console.log("otherAccount", otherAccount.address);

  //const pippo = await lock.unlockTime();
  //console.log("unlockTime", pippo.toString());
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
