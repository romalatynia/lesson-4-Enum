//
//  ViewController.swift
//  Enum
//
//  Created by Harbros47 on 14.12.20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fastFood = [Menu.cocaCola(quantity: 0.5, isAvailable: Bool.random()),
                        Menu.cocaCola(quantity: 0.7, isAvailable: Bool.random()),
                        Menu.burger(quantity: Int.random(in: 1...3), isAvailable: Bool.random()),
                        Menu.iceCream(taste: "клубники", isAvailable: Bool.random()),
                        Menu.iceCream(taste: "шоколада", isAvailable: Bool.random()),
                        Menu.strips(size: "маленький", isAvailable: Bool.random()),
                        Menu.strips(size: "средний", isAvailable: Bool.random()),
                        Menu.strips(size: "большой", isAvailable: Bool.random()),
                        Menu.potato(size: "маленький", isAvailable: Bool.random()),
                        Menu.potato(size: "средний", isAvailable: Bool.random()),
                        Menu.potato(size: "большой", isAvailable: Bool.random())]
        let index = Int.random(in: 1...5)
        var position: [String] = []
        for _ in 1...index {
            if let order = fastFood.randomElement() {
                order.informationMenu()
                position.append(order.menu)
            }
        }
    }

}
