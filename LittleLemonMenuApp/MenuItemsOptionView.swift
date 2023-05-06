//
//  MenuItemsOptionView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    enum SelectedCategories: String {
        case Food
        case Drink
        case Dessert
    }
    
    enum SortBy: String {
        case MostPopular = "Most Popular"
        case Price = "$-$$$"
        case AtoZ = "A-Z"
    }
    
    var body: some View {
        NavigationView {
            List {
                Section("SELECTED CATEGORIES") {
                    Text(SelectedCategories.Food.rawValue)
                    Text(SelectedCategories.Drink.rawValue)
                    Text(SelectedCategories.Dessert.rawValue)
                }
                
                Section("Sort By") {
                    Text(SortBy.MostPopular.rawValue)
                    Text(SortBy.Price.rawValue)
                    Text(SortBy.AtoZ.rawValue)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Done")
                    }
                }
            }
            .navigationTitle("Filter")
            
        }
        .scrollDisabled(true)
        
        
        
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
