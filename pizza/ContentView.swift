//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,4,6]
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
            ScrollView {
                ForEach(orders, id:\.self) { order in
                    HStack{
                        Text("Your ordered item for \(order)")
                        Spacer()
                        Text(19.90, format: .currency(code: "USD"))
                    }
                }
            }
            
            VStack {
                Image(systemName: "rectangle.fill").font(.largeTitle)
                Text("Margherita")
                Text("Descpription")
            }
            
            ScrollView {
                ForEach(1...25, id:\.self) { item in
                    HStack(alignment: .top, spacing: 5) {
                        Image(systemName: "\(item).circle.fill").font(.largeTitle)
                        VStack(alignment: .leading) {
                            Text("Margherita")
                            Text("Descpription")
                        }
                    }
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
