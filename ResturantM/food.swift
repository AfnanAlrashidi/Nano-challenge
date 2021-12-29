//
//  food.swift
//  ResturantM
//
//  Created by afnan on 24/05/1443 AH.
//

import Foundation

struct Food {
    var id: String
    var name: String
    var price: Int
}

class DisplayFood {
    
    var food = [Food]()
    var requests = [Food]()
    
    
    init(){
        food = [Food(id: "1", name: "Pizza", price: 100), Food(id: "2", name: "Shawarma", price: 70), Food(id: "3", name: "Pasta", price: 100)]
    }
    
    
    func showAllFood(){
        
        for f in food {
            print("name : \(f.name) , price : \(f.price)")
        }
    }
    
    func dispalyIdNameAndPrice() {
        for f in food {
            print("id : \(f.id), name : \(f.name) , price : \(f.price)")
        }
    }
    
    func requestFood(id: String) {
        
        let f = food.first(where: { f -> Bool in
            f.id == id
        })
        
        if(f != nil){
            requests.append(f!)
            print("add")
        } else {
            print("not found")
        }
        
    }
    
    func dispalyRequestsTotalPrice(){
        var sum = 0
        for f in requests {
            sum = sum + f.price
        }
        print("Total price :", sum)
    }
    
}
