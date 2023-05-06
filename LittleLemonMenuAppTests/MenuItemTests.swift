//
//  MenuItemTests.swift
//  LittleLemonMenuAppTests
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import XCTest
@testable import LittleLemonMenuApp

final class MenuItemTests: XCTestCase {
    func test_menuItemTitle_equalToTheInitializedValue() {
        let viewModel = MenuViewViewModel()
        let name = viewModel.foodItems.first?.name
        XCTAssertEqual(name, "Food1")
    }
    
    func test_menuIngredientTitle_equalToTheInitializedValue() {
        let viewModel = MenuViewViewModel()
        let ingredient = viewModel.foodItems.first?.ingredients.first?.rawValue
        let transcribedString = String(describing: ingredient!)
        XCTAssertEqual(transcribedString, "Carrot")
    }
    
}
