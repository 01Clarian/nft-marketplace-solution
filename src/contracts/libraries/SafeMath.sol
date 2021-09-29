// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath {

        /*
        SafeMath Exercise!
        Build the remaining airthmetic safeMath libary to provide further security
        for our smart contracts.
        1. Write an internally visible multiply function which ensures no remaining
        multiplication overflow and using the r = x * y equation.
        2. Solidity only automatically asserts when dividing by 0.
        Write an interally visible divide function which requires that y is 
        always greater than zero within the r = x / y equation.
        3. Write a modulo function which requires that y does not equal zero
        under any circumstance. Return the modulo of the equation from r = x % y        
        Good luck! 
        */


    // build functions to perform safe math operations that would
    // otherwise replace intuitive preventative measure

    // function add r = x + y
    function add(uint256 x, uint256 y) internal pure returns(uint256) {
        uint256 r = x + y;
            require(r >= x, 'SafeMath: Addition overflow');
        return r;
    }

    // function subtract r = x - y
        function sub(uint256 x, uint256 y) internal pure returns(uint256) {
        require(y <= x, 'SafeMath: subtraction overflow');
        uint256 r = x - y;
        return r;
    }

    // function multiply r = x * y
        function mul(uint256 x, uint256 y) internal pure returns(uint256) {
            // gas optimization
            if(x == 0) {
                return 0;
            }

            uint256 r = x * y;
            require(r / x == y, 'SafeMath: multiplication overflow');
            return r;
        }

    // function divide r = x / y
        function divide(uint256 x, uint256 y) internal pure returns(uint) {
            require(y > 0, 'SafeMath: division by zero');
            uint256 r = x / y;
            return r;  
        }

    // gas spending remains untouched 

        function mod(uint256 x, uint256 y) internal pure returns(uint) {
            require(y != 0, 'Safemath: modulo by zero');
            return x % y;
        }
}