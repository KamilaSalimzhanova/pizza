//
//  StatusBarView.swift
//  pizza
//
//  Created by kamila on 18.02.2025.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrders: Bool
    @Binding var showMenuGrid: Bool
    @EnvironmentObject var orders: OrderModel
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
            Spacer()
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
            }
            if !showOrders{
                Button {
                    showMenuGrid.toggle()
                }label: {
                    Image(systemName: showMenuGrid ? "square.grid.3x2" : "list.bullet")
                }
                .padding(.leading, 10)
            }
            Spacer()
            Label {
                Text(orders.orderTotal, format: .currency(code: "KZT"))
                    .fontWeight(.semibold)
            }icon: {
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.fill")
            }
        }
        .foregroundColor(.white)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(false), showMenuGrid: .constant(true)).environmentObject(OrderModel())
            .background(.black)
    }
}
