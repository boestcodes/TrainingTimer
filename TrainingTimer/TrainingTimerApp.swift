//
//  TrainingTimerApp.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 21.10.25.
//

import SwiftUI
import SwiftData

@main
struct TrainingTimerApp: App {
    
   
    
    var body: some Scene {
        
        WindowGroup {
            NavigationStack{
                ContentView()
            }
        }
        .modelContainer(for: TimeSettings.self)
    }
}
