//
//  MsgThirdSheet.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/4/25.
//

import SwiftUI

struct MsgThirdSheet: View {
    @State var message = "and I was wondering if you..."
    @State var isMsgVisible = false
    @State var nextViewIndex = 2
    
    var body: some View {
        Text(message)
            
    }
}

#Preview {
    MsgThirdSheet()
}
