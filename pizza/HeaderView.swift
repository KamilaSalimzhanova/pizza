//
//  HeaderView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass:UserInterfaceSizeClass? 
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular) != .compact {
                ZStack(alignment: .bottomTrailing) {
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                    Text("Dodo pizza company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                }
            } else {
                HStack(alignment: .bottom) {
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                    Text("Dodo pizza company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(Color("Surf"))
                        .fontWeight(.heavy)
                }
            }
            
        }
        .background(.ultraThinMaterial)
    }
    
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().environmentObject(OrderModel())
    }
}
