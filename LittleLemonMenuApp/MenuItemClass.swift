//
//  MenuItemClass.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import Foundation

/// I didn't understand why do we need to create this class,
/// because It duplicates MenuItem struct.
/// I successfully use MenuItem struct as a model.

//protocol MenuItemProtocol {
//    var id: UUID { get }
//    var price: Double { get }
//    var title: String { get }
//    var menuCategory: MenuCategory { get }
//    var ordersCount: Int { get set }
//    var ingredients: [Ingredient] { get set }
//}

//class MenuItemClass: MenuItemProtocol {
//    var id: UUID
//    var price: Double
//    var title: String
//    var menuCategory: MenuCategory
//    var ordersCount: Int
//    var ingredients: [Ingredient]
//
//    init(id: UUID, price: Double, title: String, menuCategory: MenuCategory, ordersCount: Int, ingredients: [Ingredient]) {
//        self.id = id
//        self.price = price
//        self.title = title
//        self.menuCategory = menuCategory
//        self.ordersCount = ordersCount
//        self.ingredients = ingredients
//    }
//}
