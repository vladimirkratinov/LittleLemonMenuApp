//
//  ContentView.swift
//  LittleLemonMenuApp
//
//  Created by Vladimir Kratinov on 2023-05-05.
//

import SwiftUI

struct MenuItemsView: View {
    
    var body: some View {
        NavigationStack {
            MenuItemView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
