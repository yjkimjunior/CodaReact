pragma solidity ^0.4.19;

import 'openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol';
import './CodaMusicToken.sol';

contract CodaMusicCrowdsale is Crowdsale {
  using SafeMath for uint256;

  CodaMusicToken public token;

  address public wallet;

  uint256 public rate;

  function CodaMusicCrowdsale(uint256 _rate, address _wallet, CodaMusicToken _token) Crowdsale(_rate, _wallet, _token) {
    rate = _rate;
    wallet = _wallet;
    token = _token;
  }
}
