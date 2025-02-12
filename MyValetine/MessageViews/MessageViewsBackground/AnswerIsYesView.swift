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
                
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 30.0)).opacity(0.6)
                        .frame(width: 370, height: 200)
                        .shadow(color: .black.opacity(0.8), radius: 2, x: 2, y: 2)
                        
                    Text("")
                }
                .frame(height: 900)
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
