//
//  MsgSecondSheet.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/3/25.
//

import SwiftUI
//
struct MsgSecondSheet: View {
    @State var message = "Valetine's day is almost here"
    @State var isMsgVisible = false
    @State var nextViewIndex = 1

    var body: some View {
        MsgTemplateView(message: message, isMsgVisible: isMsgVisible, nextViewIndex: nextViewIndex)
        
            .fullScreenCover(isPresented: isMsgVisible){
                MsgThirdSheet()
    }
        
    
}

#Preview {
    MsgSecondSheet()
}
