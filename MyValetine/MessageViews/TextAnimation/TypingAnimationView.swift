//
//  FontAnimation.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/9/25.
//

import SwiftUI

import SwiftUI

struct TypingAnimationView: View {
    let textToType : String
    @State var nextViewIndex: Int
    @State private var animatedText: String = ""

    var body: some View {
        VStack {
            if nextViewIndex != 3 {
                Spacer()
            }
            Text(animatedText)
                
                .padding()
            Image(systemName: "heart")
                .messageStyle()

        }
        .onAppear {
            animateText()
        }
    }

    func animateText() {
        for (index, character) in textToType.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.10) {
                
                    animatedText.append(character)
                
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
            }
        }
    }
}

#Preview {
    TypingAnimationView(textToType: "Hello World", nextViewIndex: 2)
}
