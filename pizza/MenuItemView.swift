//
//  MenuItemView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: Bool = false
    @Binding var item: MenuItem
    @ObservedObject var orders: OrderModel
    var body: some View {
        VStack {
            HStack {
                
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
    
                
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .font(.largeTitle)
                        .cornerRadius(15)
                        //.shadow(color: .teal, radius: 5, x: 8, y: 8)
                    //.clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                }else{
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .font(.largeTitle)
                        .rotationEffect(.degrees(180))
                }
            }
            .background(LinearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 8, y: 8)
            
            VStack(alignment: .leading) {
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button {
                addedItem = true
                orders.addOrder(item, quantity: 1)
            } label: { // HStack
                Spacer()
                Text(item.price, format: .currency(code: "KZT"))
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .disabled(item.id < 0)
            .padding()
                .background(.red, in: Capsule())
                .foregroundStyle(.white)
                .padding(5)
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
    }
}
