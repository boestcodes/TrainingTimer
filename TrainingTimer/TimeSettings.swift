//
//  Intervall.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 21.10.25.
//

import Foundation
import SwiftData

@Model

final class TimeSettings: Identifiable {
    var trainingTime: Int
    var pauseTime: Int
    var reps: Int
    
    init(trainingTime: Int, pauseTime: Int, reps: Int) {
        self.trainingTime = trainingTime
        self.pauseTime = pauseTime
        self.reps = reps
    }
}
