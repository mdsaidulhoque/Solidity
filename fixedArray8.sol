// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fixedArray{
        //dataType[fixedSize] arrayName
        uint[5] public  fixedArr = [1,2,3,4,5];

        function updateFixArr(uint _index,uint _value) public {
            require(_index < 5,"index out of limit");
            fixedArr[_index] = _value;
        }

}