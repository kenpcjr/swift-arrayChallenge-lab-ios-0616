//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quantities = [6, 4, 12, 4]
        
        let items = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        shoppingList = makeShoppingList(items, quantityOfItems: quantities)
        
        print(shoppingList)
        
    }
    
    func makeShoppingList(items:[String], quantityOfItems:[Int]) ->[String] {
        
        var newArray = [String]()
        
        for (index, item) in items.enumerate() {
            let combinedItem = "\(index + 1). \(quantityOfItems[index]) \(item)"
            
            newArray.append(combinedItem)
        }
        return newArray
    }
    
    
}