//
//  OrderRowView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order: OrderItem
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Order item \(order.item.name)")
                .fontWeight(.semibold)
            Text("- " + order.preferredCrust.rawValue)
            if order.extraIngredients {
                Image(systemName: "2.circle")
            }
            Spacer()
            Text(order.name)
            HStack() {
                Text(order.quantity, format: .number)
                Text("@")
                Text(order.item.price, format: .currency(code: "KZT"))
                    .fontWeight(.semibold)
                Spacer()
                Text(order.extPrice, format: .currency(code: "KZT"))
                    .fontWeight(.bold)
            }
        }
        
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: .constant(testOrderItem))
    }
}
