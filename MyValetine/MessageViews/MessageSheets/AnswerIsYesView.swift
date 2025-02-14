//
//  AnswerIsYesView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/12/25.
//

import SwiftUI

struct AnswerIsYesView: View {
    var body: some View {
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 30.0)).opacity(0.8)
                        .frame(width: 375, height: 350)
                        
                        .shadow(color: .black.opacity(0.8), radius: 2, x: 2, y: 2)
                        
                    VStack(alignment:.leading){
                        Text("For:  Mrs. Rosado")
                            .padding(.bottom, 20)
                        
                        Text("If I had to start life all over, I would've made all my decisions the same way. Just to end up with you again. You are my life, you are my happiness, you are my love. Thank you for making life so beautiful, fun and amazing. You deserve beautiful thing in life. I will always do the impossible to see that smile on your face. Because there's nothing more beautiful than that.")
                            
                        
                        
                    }
                    .font(.headline)
                    .foregroundStyle(Color("bgColor"))
                    .padding(.horizontal, 55)
                    .padding(.vertical, 30)
                    
                    
                    TypingAnimationView(textToType: "Te amo Alexis", nextViewIndex: 10)
                        
                        .foregroundStyle(Color("burgundy"))
                        
                        .font(.system(size: 50, weight: .semibold, design: .rounded))
                }
                .padding(.bottom, 100)
                .frame(height: 1000)
                .background(
                    Image("flowerBag")
                        .resizable()
                        .scaledToFill()
                    )
                        
        
            }
                
        }

#Preview {
    AnswerIsYesView()
}
