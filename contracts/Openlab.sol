pragma solidity 0.4.23;

contract Openlab {
	uint32 public totalClicks = 0;

	function Openlab() public {}

	function addClick() public {
		totalClicks = totalClicks + 1;
	}

	function getClicks() public view returns (uint32) {
		return totalClicks;
	}


}