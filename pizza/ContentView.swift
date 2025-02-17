//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = []
    var body: some View {
        VStack {
            ZStack {
                Image("Image")
                    .resizable()
                .scaledToFit()
                Text("Some pizza company")
                    .background(.white)
            }
            Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            HStack{
                Text("Your ordered items")
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
            }
            
            VStack {
                Image(systemName: "rectangle.fill").font(.largeTitle)
                Text("Margherita")
                Text("Descpription")
            }
            HStack(alignment: .top, spacing: 5) {
                Image(systemName: "1.circle.fill").font(.largeTitle)
                VStack(alignment: .leading) {
                    Text("Margherita")
                    Text("Descpription")
                }
            }
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
