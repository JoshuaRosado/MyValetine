//
//  MsgSecondSheet.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/3/25.
//

import SwiftUI

struct MsgSecondSheet: View {
    @State var message = "Valetine's day is almost here"
    @State var isMsgThirdSheetPresented = false
    @State var nextView = MsgThirdSheet()
    var body: some View {
        CustomizedMessage(view: nextView, message: message, isMsgVisible: isMsgThirdSheetPresented)
            
    }
}

#Preview {
    MsgSecondSheet()
}
