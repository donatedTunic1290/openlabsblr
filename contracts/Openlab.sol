pragma solidity 0.4.24;

contract Openlab {
	uint256 public totalClicks = 0;
	bytes32[] text;

	function Openlab() public {}

	function addClick() public {
		totalClicks = totalClicks + 1;
	}

	function removeClick() public {
		totalClicks = totalClicks - 1;
	}

	function addText(bytes32 _text) {
		require(_text != 0);
		text.push(_text);
	}

	function getText() public view returns (bytes32[]) {
		return text;
	}

	function getClicks() public view returns (uint256) {
		return totalClicks;
	}
}