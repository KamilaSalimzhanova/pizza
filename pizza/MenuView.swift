//
//  MenuView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuView: View {
    var menu: [MenuItem]
    @Binding var selectedItem: MenuItem
    var body: some View {
        List(MenuCategory.allCases, id: \.self) { category in
            Section {
                ForEach(menu.filter({$0.category == category})) { item in
                    MenuRowView(item: item)
                        .onTapGesture {
                            selectedItem = item
                        }
                }
            } header: {
                Text(category.rawValue)
            }
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menu: MenuModel().menu, selectedItem: .constant(testMenuItem))
    }
}
