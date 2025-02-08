//
//  LetterInside.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/8/25.
//

import SwiftUI

struct LetterInside: View {
    var body: some View {

        UpsideDownTriangle()
            .fill(Color.white)
            .frame(width: 250, height: 105)
            .position(x: 150, y:75)
            .cornerRadius(20)

    }
}

#Preview {
    MainView()
}
