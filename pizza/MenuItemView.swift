//
//  MenuItemView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: Bool = false
    var body: some View {
        VStack {
            HStack {
                
                Text("Margherita Dodo pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
    
                
                if let image = UIImage(named: "0x_lg") {
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla iaculis justo eget hendrerit. Phasellus elementum, magna vel consequat interdum, augue nunc efficitur purus, sit amet venenatis dui sem vitae velit. Praesent eget lobortis magna. Integer laoreet leo mauris, sed eleifend turpis consequat at. Pellentesque elementum dictum quam sed posuere.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button {
                addedItem = true
            } label: { // HStack
                Spacer()
                Text(12.99, format: .currency(code: "KZT"))
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }.padding()
                .background(.red, in: Capsule())
                .foregroundStyle(.white)
                .padding(5)
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
