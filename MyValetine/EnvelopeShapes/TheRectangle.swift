//
//  TheRectangle.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/2/25.
//

import SwiftUI

struct TheRectangle: View {
    var body: some View {
        Rectangle()
            .fill(Color("pinkOutside"))
            .frame(width: 300, height: 200)
            .cornerRadius(20)
            .shadow(color:.black.opacity(0.2), radius: 5, x: 12, y: 15)
    }
}

#Preview {
    TheRectangle()
}
