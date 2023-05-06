//
//  MenuItem.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var picture: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Hashable, Identifiable, MenuItemProtocol {
    var id = UUID()
    var price: Double
    var title: String
    var picture: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var ingredients: [Ingredient]
}
