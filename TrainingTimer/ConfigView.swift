//
//  ConfigView.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 22.10.25.
//

import SwiftUI
import SwiftData

struct ConfigView: View {
    @Environment(\.modelContext) private var context
    @Bindable var timeSettings: TimeSettings
    
    var body: some View {
        VStack{
            SettingSingleView(typeOfIntervall: "Training",backColor: .green, countOf: $timeSettings.trainingTime)
            SettingSingleView(typeOfIntervall: "Pause",backColor: .yellow, countOf: $timeSettings.pauseTime)
            SettingSingleView(typeOfIntervall: "Repetitions",backColor: .gray, countOf: $timeSettings.reps)
        }
    }
}

#Preview {
   // ConfigView()
}
