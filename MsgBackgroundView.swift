//
//  MsgBackgroundView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/6/25.
//

import SwiftUI

struct MsgBackgroundView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("oldPaper"))
                .ignoresSafeArea()
//            ZStack{
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.white)
//                    .padding(25)
//                    .shadow(color:.black.opacity(0.2), radius: 10, x: 15, y: 10)
//            }
        }
        
    }
}

#Preview {
    MsgBackgroundView()
}
