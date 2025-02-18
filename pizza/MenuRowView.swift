//
//  MenuRowView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuRowView: View {
    var item: MenuItem
    var body: some View {
        HStack(alignment: .top, spacing: 5) {
            if let image = UIImage(named: "\(item.id)_sm") {
                Image(uiImage: image)
                    .font(.largeTitle)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -15)
            }else{
                Image("surfboard_sm")
                    .font(.largeTitle)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -15)
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("\(item.name)")
                    Spacer()
                    Text(item.price, format: .currency(code: "KZT"))
                }
                ratingsVIew(rating: item.rating)
            }
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: testMenuItem)
    }
}
