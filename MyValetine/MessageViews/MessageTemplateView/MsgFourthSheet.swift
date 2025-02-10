//
//  MsgFourthSheet.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/10/25.
//

import SwiftUI

struct MsgFourthSheet: View {
    @State var message = "Will you be my Valentine?"
    @State var nextViewIndex = 1
    @State var isMsgVisible = false
    
    var body: some View {
        NavigationStack{
            MsgTemplateView(message: message, isMsgVisible: isMsgVisible, nextViewIndex: nextViewIndex)
        }
        .navigationBarBackButtonHidden()
    }
}



#Preview{
    MsgFourthSheet()
}
