//
//  TheTriangle.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/2/25.
//

import SwiftUI

struct TheTriangle: View {
    var body: some View {
        UpsideDownTriangle()
            .fill(Color("pinkInside"))
            .frame(width: 300, height: 125)
            .position(x: 150, y:65)
            .cornerRadius(20)
        
    }
}
#Preview {
    TheTriangle()
}
