//
//  BlockView.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 22.10.25.
//

import SwiftUI
import SwiftData

struct BlockView: View {
    @Environment(\.modelContext) private var context
    @Bindable var timeSettings: TimeSettings
    
    var body: some View {
        
        VStack(spacing: 0){
            HStack{
                Text("Training")
                Spacer()
                Text("\(timeSettings.trainingTime)")
            }
            .font(.title)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, minHeight: 50) // minHeight für Balken-Optik
            .background(Color.green)
            
            
           // Divider()
            
            HStack{
                Text("Pause")
                Spacer()
                Text("\(timeSettings.pauseTime)")
            }
            .font(.title)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, minHeight: 50) // minHeight für Balken-Optik
            .background(Color.yellow)
            
            //Divider()
            
            HStack{
                Text("Repetitions")
                Spacer()
                Text("\(timeSettings.reps)")
            }
            .font(.title)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, minHeight: 50) // minHeight für Balken-Optik
            .background(Color.gray)
            
            //Divider()
            

        }
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding() // Padding nur außen um die gesamte Card
        .foregroundStyle(.black)
        
    }
}

#Preview {
    // Use a sample instance for preview
    let sample = TimeSettings(trainingTime: 30, pauseTime: 10, reps: 5)
    BlockView(timeSettings: sample)
}

