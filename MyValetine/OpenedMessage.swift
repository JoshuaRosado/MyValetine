//
//  openedMessage.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//

import SwiftUI

struct MessageFont: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(size: 40, weight: .heavy, design: .rounded))
        .foregroundStyle(Color("fontColor"))
        .frame(width: 400)
    }
}

extension View {
    func messageStyle() -> some View {
        modifier(MessageFont())
        
    }
}

struct OpenedMessage: View {
    @State var message = "Hola Preciosa!"
    @State var isMsgVisible = false
    @State var nextViewIndex = 0
    var body: some View {
        NavigationStack{
            MsgTemplateView(message: message, isMsgVisible: isMsgVisible, nextViewIndex: nextViewIndex)
            
         .fullScreenCover(isPresented: $isMsgVisible){
                    MsgSecondSheet()
                }
        }
        
        
        
    }
    
    
    
}

#Preview {
    OpenedMessage()
}
