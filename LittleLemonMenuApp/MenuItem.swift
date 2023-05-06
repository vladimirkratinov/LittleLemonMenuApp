//
//  MenuItem.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import Foundation


// My solution:

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Hashable, Identifiable {
    let id = UUID()
    let type: MenuCategory
    let name: String
    let picture: String
    let orderAmount: Int
    let price: Double
    let ingredients: [Ingredient]
}

/// Official task: (I commented it out because it has no sense)
/// Task 4: Create a menu item structure with the following properties
/// &&&
/// Task 7: For the menu item class, define a menu item protocol that enforces the following conformances on the delegates





