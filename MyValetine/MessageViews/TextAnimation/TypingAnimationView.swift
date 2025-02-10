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
    @State private var animatedText: String = ""

    var body: some View {
        VStack {
            Spacer()
            Text(animatedText)
                .messageStyle()
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
    TypingAnimationView(textToType: "Hello World")
}
