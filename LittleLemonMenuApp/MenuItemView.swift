//
//  MenuItemsView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemView: View {
    
    @EnvironmentObject var viewModel: MenuViewViewModel
    var menuItems: [MenuItem]
    var menuCategory: MenuCategory
    
    init(menuItems: [MenuItem], menuCategory: MenuCategory) {
        self.menuItems = menuItems
        self.menuCategory = menuCategory
    }
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            // Title
            HStack {
                Text(menuCategory.rawValue)
                    .font(.title)
                    .fontWeight(.medium)
                Spacer()
            }
            // Grid
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach((menuItems), id: \.self) { item in
                    NavigationLink(destination: MenuItemDetailsView(item: item)) {
                        VStack {
                            Image(item.picture)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 110, height: 140)
                                .cornerRadius(25)
                            Text(item.title)
                                .font(.callout)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MenuViewViewModel()
        MenuItemView(menuItems: viewModel.foodItems, menuCategory: .food)
    }
}
