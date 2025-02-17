//
//  MenuItemView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image).font(.largeTitle)
                    .cornerRadius(10)
                    //.clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            }else{
                Image("surfboard_lg").font(.largeTitle)
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla iaculis justo eget hendrerit. Phasellus elementum, magna vel consequat interdum, augue nunc efficitur purus, sit amet venenatis dui sem vitae velit. Praesent eget lobortis magna. Integer laoreet leo mauris, sed eleifend turpis consequat at. Pellentesque elementum dictum quam sed posuere.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
