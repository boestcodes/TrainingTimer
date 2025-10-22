//
//  IntervallView.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 21.10.25.
//

import SwiftUI
import Combine
import SwiftData

struct TrainingView: View {
    
    @Environment(\.modelContext) private var context
    @Bindable var timeSettings: TimeSettings
   
    var body: some View {
        
        VStack{
            Text("Trainiere")
                .padding()
            
            Text("\(timeSettings.trainingTime)")
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
        .fill(.green))
    }
}

#Preview {
    //TrainingView()
}
