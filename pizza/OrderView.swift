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
            //ZStack(alignment: .top){
            NavigationStack {
                List{
                    ForEach($orders.orderItems) { $order in
                        NavigationLink(value: order){
                            OrderRowView(order: $order)
                                .padding(4)
                                .background(.regularMaterial, in: RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                .shadow(radius: 10)
                                .padding(.bottom, 5)
                                .padding([.leading, .trailing], 7)
                        }.navigationDestination(for: OrderItem.self) { order in
                            OrderDetailView(orderItem: $order, presentSheet: .constant(false), newOrder: .constant(false))
                        }.navigationTitle("Your order")
                    }
                    .onDelete { indexSet in
                        orders.orderItems.remove(atOffsets: indexSet)
                    }
                    .onMove { source, destination in
                        orders.orderItems.move(fromOffsets: source, toOffset: destination)
                    }
                }
            }
            //.padding(.top, 70)
            //                HStack {
            //                    Text("Order Pizza")
            //                        .font(.title)
            //                    Spacer()
            //                }
            //                .padding(5)
            //                .background(.ultraThinMaterial)
            //}
            //.padding()
            //            Button("Delete Order") {
            //                if !orders.orderItems.isEmpty {
            //                    orders.removeLast()
            //                }
            //            }.padding(5)
            //                .padding(7)
            //        }
            //        .background(Color("Surf"))
        }
        .background(.regularMaterial)
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: OrderModel()) // for all bindings
    }
}
