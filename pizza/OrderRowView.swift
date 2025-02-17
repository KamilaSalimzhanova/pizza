//
//  OrderRowView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Order item \(order)")
                .fontWeight(.semibold)
            HStack() {
                Text(1, format: .number)
                Text("@")
                Text(5000, format: .currency(code: "KZT"))
                    .fontWeight(.semibold)
                Spacer()
                Text(5000, format: .currency(code: "KZT"))
                    .fontWeight(.bold)
            }
        }
        
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
