//
//  MenuRowView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment: .top, spacing: 5) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image).font(.largeTitle)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -15)
            }else{
                Image("surfboard_lg").font(.largeTitle)
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                ratingsVIew(rating: 4)
            }
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: 2)
    }
}
