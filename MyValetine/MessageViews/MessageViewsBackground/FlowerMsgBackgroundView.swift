//
//  FlowerMsgBackgroundView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/11/25.
//

import SwiftUI

struct FlowerMsgBackgroundView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
        
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 30.0)).opacity(0.6)
                .frame(width: 350, height: 600)
                .shadow(color: .black.opacity(0.8), radius: 2, x: 2, y: 2)
                
            Text("")
        }
        .frame(height: 900)
        .background(
            Image("pinkFlowers")
                .resizable()
                .scaledToFill()
            )
                
        
    }
        
}

#Preview {
    FlowerMsgBackgroundView()
}
