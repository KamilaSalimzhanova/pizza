//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders: OrderModel = OrderModel()
    @State private var showOrders = false
    @State private var showMenuGrid = false
    @State private var selectedItem: MenuItem = noMenuItem
    var body: some View {
        TabView {
            VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light) // override dark env
            //StatusBarView(showOrders: $showOrders, showMenuGrid: $showMenuGrid)
            OrderView(orders: orders)
                    .cornerRadius(10)
            }.tabItem {
                Label("Order", systemImage: "cart")
            }
            VStack {
                HeaderView()
                    .shadow(radius: 5)
                    .environment(\.colorScheme, .light) // override dark env
                //StatusBarView(showOrders: $showOrders, showMenuGrid: $showMenuGrid)
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                if !showMenuGrid {
                    MenuView(menu: menu, selectedItem: $selectedItem)
                } else {
                    MenuGridView(selectedItem: $selectedItem, menu: menu)
                }
            }.tabItem {
                Label("Menu", systemImage: "menucard")
            }
        }
        .padding()
        //.background(Color.cyan)
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}


