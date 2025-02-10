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

        }
        
    }
}

#Preview {
    MsgBackgroundView()
}
