//
//  MsgThirdSheet.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/4/25.
//

import SwiftUI

struct MsgThirdSheet: View {
    @State var message = "and I was wondering if you..."
    @State var isMsgFourthSheetPresented: Bool = false
    @State var nextView = MsgFinalSheet()
    
    var body: some View {
        CustomizedMessage(view: nextView, message: message, isMsgVisible: isMsgFourthSheetPresented)
            
    }
}

#Preview {
    MsgThirdSheet()
}
