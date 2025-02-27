//
//  OrderItemView.swift
//  pizza
//
//  Created by kamila on 18.02.2025.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    @State var pizzaCrust:PizzaCrust
    @State private var name: String = ""
    @State private var comments: String = ""
    init(orderItem: Binding<OrderItem>){
        self._orderItem = orderItem
        self.pizzaCrust = orderItem.item.crust.wrappedValue
    }
    var body: some View {
        VStack{
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredients" + (doubleIngredient ? " Yes" : " No"))
            }
            Stepper(value: $quantity, in: 1...10){
                Text("\(quantity) " + (quantity == 1 ? "pizza" : "pizzas"))
            }
            Picker(selection: $pizzaCrust) {
                ForEach(PizzaCrust.allCases, id: \.self) { crust in
                    Text("\(crust.rawValue)")
                        .tag(crust)
                }
            } label: {
                Text("pizzaCrust")
            }
            .pickerStyle(MenuPickerStyle())
            VStack {
                Text("comments")
                TextEditor(text: $comments)
            }
            .clipShape(RoundedRectangle(cornerRadius: 3))
            .shadow(radius: 2)
            Spacer()
        }.padding()
    }
}

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView(orderItem: .constant(testOrderItem))
    }
}
