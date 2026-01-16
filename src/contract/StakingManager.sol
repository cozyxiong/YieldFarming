// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {IStakingManager} from "../interface/IStakingManager.sol";
import "./StakingManagerStorage.sol";

contract StakingManagerEvent {

}

contract StakingManager is Initializable, OwnableUpgradeable, PausableUpgradeable, StakingManagerStorage, YieldFarmingEvent, IStakingManager {

    constructor() {
        _disableInitializers();
    }

    function initialize(address owner) public initializer {
        __Ownable_init(owner);
        
    }



}
