//
//  openedMessage.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//

import SwiftUI

struct OpenedMessage: View {
    @State private var scale = 0.0
    @State private var opacity = 0.0
    @State private var message = "Hola preciosa!"
    @State var nextView = MsgSecondSheet()
    
    @State private var isMsgSecondSheetPresented = false
    
    var body: some View {
        CustomizedMessage(view: nextView, message: message, isMsgVisible: isMsgSecondSheetPresented)
            
        }
    }


#Preview {
    OpenedMessage()
}
