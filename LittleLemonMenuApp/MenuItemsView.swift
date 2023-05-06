//
//  ContentView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemsView: View {
    
    @StateObject private var viewModel = MenuViewViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.isShowFood {
                    MenuItemView(menuItems: viewModel.foodItems, menuCategory: .food).environmentObject(viewModel)
                }
                if viewModel.isShowDrinks {
                    MenuItemView(menuItems: viewModel.drinkItems, menuCategory: .drink).environmentObject(viewModel)
                }
                if viewModel.isShowDesserts {
                    MenuItemView(menuItems: viewModel.dessertItems, menuCategory: .dessert).environmentObject(viewModel)
                }
            }
            .onAppear() {
                viewModel.updateMenuItems()
            }
            .navigationTitle("Menu")
            .toolbar {
                Button {
                    viewModel.showOptionsView.toggle()
                } label: {
                    Image(systemName: "slider.vertical.3")
                }
            }
            .sheet(isPresented: $viewModel.showOptionsView) {
                NavigationStack {
                    MenuItemsOptionView().environmentObject(viewModel)
                        .toolbar {
                            Button("Done") {
                                viewModel.updateMenuItems()
                                viewModel.showOptionsView.toggle()
                            }
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
