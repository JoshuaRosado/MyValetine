//
//  RotatingTriangle.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/2/25.
//

import SwiftUI

import SwiftUI
struct RotatingTriangle: View {
    var body: some View {
        UpsideDownTriangle()
            .fill(Color("pinkTriangle"))
            .frame(width: 310, height: 130)
            .position(x: 150, y:65)
            .cornerRadius(20)
    }
}

#Preview {
    RotatingTriangle()
}
