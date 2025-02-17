//
//  OrderView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    var body: some View {
        VStack{
            Label {
                Text(5000, format: .currency(code: "KZT"))
            }
        icon: {
            Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
        }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders, id:\.self) { order in
                    OrderRowView(order: order)
                }
            }
        }
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders:  [1,2,3,4,6])
    }
}
