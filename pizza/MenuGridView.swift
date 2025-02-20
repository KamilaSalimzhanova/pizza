//
//  MenuGridView.swift
//  pizza
//
//  Created by kamila on 20.02.2025.
//

import SwiftUI

struct MenuGridView: View {
    @State private var favorites: [Int] = [-1]
    @Binding var selectedItem: MenuItem
    @Namespace private var nspace
    func menu(_ id: Int) -> MenuItem {
        menu.first(where: {$0.id == id}) ?? noMenuItem
    }
    var menu: [MenuItem]
    let columnLayout1 = Array(repeating: GridItem(), count: 3)
    let columnLayout2 = Array(repeating: GridItem(), count: 5)
    var body: some View {
        VStack{
            LazyVGrid(columns: columnLayout2) {
                ForEach(favorites.sorted(), id:\.self) { item in
                    FavoriteTileView(menuItem: menu(item))
                        .matchedGeometryEffect(id: item, in: nspace)
                        .onTapGesture {
                            selectedItem = menu(item)
                        }
                        .onLongPressGesture {
                            if let index = favorites.firstIndex(where: {$0 == item}) {
                                favorites.remove(at: index)
                            }
                        }
                }
            }
            //Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout1) {
                    ForEach(menu) { item in
                        if !favorites.contains(item.id){
                            MenuItemTileView(menuItem: item)
                                .animation(.easeOut, value: favorites)
                                .matchedGeometryEffect(id: item.id, in: nspace)
                                .onTapGesture(count: 2) {
                                    if !favorites.contains(item.id){
                                        withAnimation(.easeInOut){
                                            favorites.append(item.id)
                                        }
                                    }
                                }
                                .onTapGesture {
                                    selectedItem = item
                                }
                                .onLongPressGesture {
                                    selectedItem = noMenuItem
                                }
                        }
                    }
                }
            }
        }
        .animation(.easeOut, value: favorites)
    }
}

struct MenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        MenuGridView(selectedItem: .constant(testMenuItem), menu: MenuModel().menu)
    }
}
