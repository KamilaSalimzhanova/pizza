//
//  ContentView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Image")
                    .resizable()
                .scaledToFit()
                Text("Some pizza company")
                    .background(.white)
            }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            HStack{
                Text("Your ordered items")
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
            }
            HStack(alignment: .top, spacing: 5) {
                Image("Image 1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 85)
                VStack(alignment: .leading) {
                    Text("Margherita")
                    Text("Descpription")
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
