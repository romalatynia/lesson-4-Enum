//
//  KFC.swift
//  Enum
//
//  Created by Harbros47 on 14.12.20.
//

import Foundation

enum Menu {
    case cocaCola(quantity: Double, isAvailable: Bool)
    case burger(quantity: Int, isAvailable: Bool)
    case strips(size: String, isAvailable: Bool)
    case iceCream(taste: String, isAvailable: Bool)
    case potato(size: String, isAvailable: Bool)
    
    var menu: String {
        switch self {
        case let .cocaCola(quantity, _):
            return("Coca-Cola \(quantity) мл")
        case let .burger(quantity, _):
            return("Бургер \(quantity) шт.")
        case let .strips(size, _):
            return("Стрипсы \(size)")
        case let .iceCream(taste, _):
            return("Мороженное со вкусом \(taste)")
        case let .potato(size, _):
            return("Картофель \(size)")
        }
    }
    func informationMenu() {
        let sorry = "Извините, но "
        switch self {
        case let .cocaCola(quantity, isAvailable):
            print(isAvailable ? "Coca-Cola \(quantity) мл" : "\(sorry) Coca-Cola закончилась")
        case let .burger(quantity, isAvailable):
            print(isAvailable ? "Бургер \(quantity) шт." : "\(sorry) бургеров нет")
        case let .strips(size, isAvailable):
            print(isAvailable ? "Стрипсы \(size)" : "\(sorry) стрипсы закончилась")
        case let .iceCream(taste, isAvailable):
            print(isAvailable ? "Мороженное со вкусом \(taste)" : "\(sorry) Coca-Cola закончились")
        case let .potato(size, isAvailable):
            print(isAvailable ? "Картофель \(size)" : "\(sorry) Картофель закончился")
        }
    }
}
