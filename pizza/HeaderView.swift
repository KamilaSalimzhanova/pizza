//
//  HeaderView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("Image")
                .resizable()
                .scaledToFit()
            Text("Some pizza company")
                .background(.white)
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
