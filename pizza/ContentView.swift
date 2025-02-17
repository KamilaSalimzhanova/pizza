//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    var orders =  [1,2,3,4,6]
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


