pragma solidity ^0.8.0;
import "forge-std/Test.sol";
import "forge-std/console2.sol";
import "../Prover.sol";

contract AssemblyTest is Test {
  address internal constant zero = 0x0000000000000000000000000000000000000000;
  uint256 internal testNumber;

  function setUp() public {}

  function testCallToBlockHeader() public returns (bytes memory out) {
    bytes
      memory b = hex"f901fba07c3c2f5358c7bc470bf5969c79dbfe426d6ea120667db3546ad932c7a7e48701a01dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d4934794f97e180c050e5ab072211ad2c213eb5aee4df134a0895cb868810a6cac11174af20c66a928c84988bab936220bd2c08363ba552e15a00ad73df3f4f31c0892605516105ccf72328c5bed38d08ae84a27577aceae0359a0212e3a665c31379833c02f9cb803c39789036c17823e5aa9fec182dd5748e40db9010000028802000000901c314002a0600044010a40106710882008b110209800490024030480002098040022034801c00634004a8018c02020a00c000ea41024a10a880d400004320508280091295100a0003440d205000c80320052c28cf188000108004040020446a814a01202002008040000341004296200d0102210800860008801010004420501005e800004910076100140018024002841417000341000c552088010150001082500aa03887002813305200002458306a018830820200c62043440060c400001041250a1004a000c0dc0308214080090204300200010700200101903940040311810000000596200800041000600344010200c8040080042808375f8b18401c9c38083dbc38f846340ef2480a0abdc7410da330aedc5e8dea1a53666c5a2e83f0bdd834c1963d59979e9ceeb25880000000000000000";
    Prover newProver = new Prover();
    newProver.toBlockHeader(b);
    // bytes memory b = "0xf901fba07c3c2f5358c7bc470bf5969c79dbfe426d6ea120667db3546ad932c7a7e48701a01dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d4934794f97e180c050e5ab072211ad2c213eb5aee4df134a0895cb868810a6cac11174af20c66a928c84988bab936220bd2c08363ba552e15a00ad73df3f4f31c0892605516105ccf72328c5bed38d08ae84a27577aceae0359a0212e3a665c31379833c02f9cb803c39789036c17823e5aa9fec182dd5748e40db9010000028802000000901c314002a0600044010a40106710882008b110209800490024030480002098040022034801c00634004a8018c02020a00c000ea41024a10a880d400004320508280091295100a0003440d205000c80320052c28cf188000108004040020446a814a01202002008040000341004296200d0102210800860008801010004420501005e800004910076100140018024002841417000341000c552088010150001082500aa03887002813305200002458306a018830820200c62043440060c400001041250a1004a000c0dc0308214080090204300200010700200101903940040311810000000596200800041000600344010200c8040080042808375f8b18401c9c38083dbc38f846340ef2480a0abdc7410da330aedc5e8dea1a53666c5a2e83f0bdd834c1963d59979e9ceeb25880000000000000000"
  }
}
