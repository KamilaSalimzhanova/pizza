//
//  OrderView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders: OrderModel
    var body: some View {
        VStack {
            ZStack(alignment: .top){
                ScrollView {
                    ForEach($orders.orderItems) { order in
                        OrderRowView(order: order)
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
                }
                .padding(5)
                .background(.ultraThinMaterial)
            }
            .padding()
            Button("Delete Order") {
                if !orders.orderItems.isEmpty {
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
        OrderView(orders: OrderModel()) // for all bindings
    }
}
