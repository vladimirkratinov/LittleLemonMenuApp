//
//  MenuItemsView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemView: View {
    
    @EnvironmentObject var viewModel = MenuViewViewModel
    var menuItems: [MenuItem]
    var menuCategory: MenuCategory
    
    
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //MARK: - Food
                
                // Title
                HStack {
                    Text(MenuCategory.Food.rawValue)
                        .font(.title)
                        .padding(.leading, 20)
                    Spacer()
                }
                
                // Grid
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.foodItems, id: \.name) { item in
                        NavigationLink(destination: MenuItemDetailsView(item: item)) {
                            VStack {
                                Image(item.picture)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 150)
                                    .cornerRadius(25)
                                Text(item.name)
                                    .font(.callout)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                .padding(.leading, 8)
                .padding(.trailing, 8)
                
                //MARK: - Drinks
                
                // Title
                HStack {
                    Text(MenuCategory.Drink.rawValue)
                        .font(.title)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    Spacer()
                }
                
                // Grid
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.drinkItems, id: \.name) { item in
                        NavigationLink(destination: MenuItemDetailsView(item: item)) {
                            VStack {
                                Image(item.picture)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 150)
                                    .cornerRadius(25)
                                Text(item.name)
                                    .font(.callout)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                .padding(.leading, 8)
                .padding(.trailing, 8)
                
                //MARK: - Desserts
                
                // Title
                HStack {
                    Text(MenuCategory.Dessert.rawValue)
                        .font(.title)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    Spacer()
                }
                
                // Grid
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.dessertItems, id: \.name) { item in
                        NavigationLink(destination: MenuItemDetailsView(item: item)) {
                            VStack {
                                Image(item.picture)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 150)
                                    .cornerRadius(25)
                                Text(item.name)
                                    .font(.callout)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                .padding(.leading, 8)
                .padding(.trailing, 8)
                
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresentingModal.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isPresentingModal) {
                        MenuItemsOptionView()
                    }
                }
            }
            
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
