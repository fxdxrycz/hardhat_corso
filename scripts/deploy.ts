import { ethers } from "hardhat";
  const ethProvider = require('eth-provider') // eth

async function main() {

  const frame = ethProvider('frame') // Connect to Frame

  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const unlockTime = currentTimestampInSeconds + 60;

  const lockedAmount = ethers.utils.parseEther("0.001");

  const LockFactory = await ethers.getContractFactory("Lock");
  const tx = LockFactory.getDeployTransaction(unlockTime, { value: lockedAmount });
  //const lock = await LockFactory.deploy(unlockTime, { value: lockedAmount });

  //await lock.deployed();

  tx.from = (await frame.request({ method: 'eth_requestAccounts' }))[0];
  console.log("ledger account", tx.from);

  await frame.request({ method: 'eth_sendTransaction', params: [tx] })

  
  //let provider = new ethers.providers.JsonRpcProvider("http://127.0.0.1:8545");
  //console.log("chainid", await provider.getNetwork());

  //const pippo = await lock.unlockTime();
  //console.log("unlockTime", pippo.toString());
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
