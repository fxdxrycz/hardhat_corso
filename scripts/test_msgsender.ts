import { ethers } from "hardhat";

async function main() {

  const TestFactory = await ethers.getContractFactory("MsgSenderTest");
  const MsgSenderTest = await TestFactory.deploy();

  await MsgSenderTest.deployed();

  console.log(
    `MsgSender deployed to ${MsgSenderTest.address}`
  );

  const Factory = await ethers.getContractFactory("MsgSender");
  const MsgSender = await Factory.deploy(MsgSenderTest.address);

  await MsgSender.deployed();

  console.log(
    `MsgSender deployed to ${MsgSender.address}`
  );

  }
// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
