//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var orders: [OrderItem] = testOrders
    @State private var showOrders = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            HStack {
                Text("\(orders.count) orders")
                Spacer()
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                }
            }
            .foregroundColor(.white)
            .font(.title2)
            if showOrders {
                OrderView(orders: $orders)
                    .cornerRadius(10)
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


