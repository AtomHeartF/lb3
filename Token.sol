// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;



import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

  /**
   * @title Token
   * @dev ContractDescription
   * @custom:dev-run-script Token
   */


contract Token is ERC20 {


    struct MyStructure {
    // логический (флаг)
    bool x1;
    //знаковый числовой
    int x2;
    // адрес
    address x3;
    // четырехбайтовый (в описании не было приставки "знаковый", поэтому взял тип unit, без знака
    uint32 x4;
    }
    // массив данных, в который будут добавляться данные в формате созданной структуры
    MyStructure [] public StructureList;

    constructor(uint256 initialSupply) ERC20("Token", "TKN") {
        _mint(msg.sender, initialSupply);
        
    }
    // Функция добавления структуры данных в массив
    // * почему-то не получается сделать функцию без return, поэтому просто возвращаю
    // значение 1
    function AddToList(bool _x1,int _x2,address _x3,uint32 _x4) public returns(int){
         MyStructure memory a = MyStructure(_x1,_x2,_x3,_x4);
        StructureList.push(a);
        return 1;
    }

}
