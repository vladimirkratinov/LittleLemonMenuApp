//
//  MenuUtemDetailsView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    var body: some View {
        NavigationStack {
            VStack {
                Image(item.picture)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(25)
                    .frame(width: 400, height: 400)
                    
                Text("Price: ")
                    .font(.headline)
                Text(String(item.price))
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                Text("Ordered:")
                    .font(.headline)
                Text(String(item.ordersCount))
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                Text("Ingredients:")
                    .font(.headline)
                ForEach(item.ingredients, id: \.self) { enumCase in
                    Text(String(describing: enumCase))
                        .font(.subheadline)
                }
            }
        }
        .navigationTitle(item.title)
    }
}

struct MenuUtemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let menuItem = MenuItem(
            price: 615,
            title: "Food1",
            picture: "food1",
            menuCategory: .food,
            ordersCount: 34,
            ingredients: [.broccoli, .carrot, .pasta]
        )
        MenuItemDetailsView(item: menuItem)
    }
}
