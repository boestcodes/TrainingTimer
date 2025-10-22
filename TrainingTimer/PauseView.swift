//
//  IntervallView.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 21.10.25.
//

import SwiftUI
import Combine
import SwiftData

struct PauseView: View {
    

   
    var body: some View {
        
        VStack{
            Text("Entspann dich")
                .padding()
            
            Text("Countdown")
                .font(.largeTitle)
                .padding()
            
            Button{
                
            } label: {
                Text("Start")
            }
            .padding()
            .buttonStyle(.glassProminent)
                
        }
        .frame(minWidth: 300, minHeight: 300)
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(.yellow))
    }
}

#Preview {
    PauseView()
}
