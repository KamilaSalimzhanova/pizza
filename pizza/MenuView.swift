//
//  MenuView.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(1...9, id:\.self) { item in
                MenuRowView(item: item)
            }
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
