//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    var orders =  [1,2,3,4,6]
    var showOrders = false
    var body: some View {
        VStack {
            HeaderView().shadow(radius: 5)
            if showOrders {
                OrderView(orders: orders)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                MenuView()
            }
            Spacer()
        }
        .padding()
        //.background(Color.cyan)
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


