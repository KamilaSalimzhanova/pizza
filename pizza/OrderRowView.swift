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
        HStack(alignment: .firstTextBaseline){
            Text("Your ordered item for \(order)")
            Spacer()
            Text(5000, format: .currency(code: "KZT"))
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
