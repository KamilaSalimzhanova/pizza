//
//  OrderView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct OrderView: View {
    @Binding var orders: [OrderItem]
    var body: some View {
        VStack {
            ZStack(alignment: .top){
                ScrollView {
                    ForEach(orders, id:\.id) { order in
                        //OrderRowView(order: order)
                        Text(order.item.name)
                            .padding(4)
                            .background(.regularMaterial, in: RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 7)
                    }
                }
                .padding(.top, 50)
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                    Label {
                        Text(5000, format: .currency(code: "KZT"))
                            .fontWeight(.semibold)
                    }
                icon: {
                    Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
                    }
                }
                .padding(5)
                .background(.ultraThinMaterial)
            }
            .padding()
            Button("Delete Order") {
                if !orders.isEmpty {
                    orders.removeLast()
                }
            }.padding(5)
                .background(.regularMaterial, in: Capsule())
                .padding(7)
        }
        .background(Color("Surf"))
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: .constant(testOrders)) // for all bindings
    }
}
