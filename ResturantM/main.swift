//
//  main.swift
//  ResturantM
//
//  Created by afnan on 23/05/1443 AH.
//

import Foundation



let mein:String="""
("------------------------*************-----------------------")
("----------*Helle, welcome to the Avolana Resturant*---------")
(" *************************---MENU---************************")
("---------------------1.see all food-------------------------")
("------------------2.request a food--------------------------")
("----------------3.Dispaly the total price-------------------")
("------------------------4.Exist-----------------------------")
("------------------------------------------------------------")
("-----------------------Select your choice-------------------")
("------------------------*************-----------------------")
"""


var displayFood = DisplayFood()

print(mein)
var input = ""
while input != "0" {
    
    print("Select your choice: ")
    input = readLine()!
    
    switch input {
    case "1":
        displayFood.showAllFood()
        break;
        
    case "2":
        displayFood.dispalyIdNameAndPrice()
        print("Enter id of the food:")
        let id = readLine()!
        displayFood.requestFood(id: id)
        break;
        
    case "3":
        displayFood.dispalyRequestsTotalPrice()
        break;
        
    case "4":
        print("Exist")
        input="0"
        break;
    default:
        print("Error")
        break;
    }
    
}

