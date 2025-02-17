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
            }else{
                Image("surfboard_lg").font(.largeTitle)
            }
            Text("Margherita")
            Text("Descpription")
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
