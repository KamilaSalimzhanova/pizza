//
//  ratingsVIew.swift
//  pizza
//
//  Created by kamila on 17.02.2025.
//

import SwiftUI

struct ratingsVIew: View {
    var rating: Int
    var body: some View {
        HStack() {
            ForEach(1...6, id:\.self) { index in
                Image(systemName: rating >= index ? "fork.knife.circle.fill" :"circle")

            }
        }
    }
}

struct ratingsVIew_Previews: PreviewProvider {
    static var previews: some View {
        ratingsVIew(rating: 4)
    }
}
