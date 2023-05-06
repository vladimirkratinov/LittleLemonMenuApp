//
//  MenuItemsOptionView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @EnvironmentObject var viewModel: MenuViewViewModel
    
    var body: some View {
        NavigationStack {
            List {
                
                Section("Selected Categories") {
                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                }
                
                Picker("Sort By", selection: $viewModel.sortBy) {
                    ForEach(SortBy.allCases, id: \.self) { category in
                        Text(category.rawValue).tag(category)
                    }
                }
            }
            .pickerStyle(.inline)
            .listStyle(.grouped)
        }
        .navigationTitle("Filter")
        .scrollDisabled(true)
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView().environmentObject(MenuViewViewModel())
    }
}
