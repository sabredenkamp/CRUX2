//
//  Goals.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

class Goal: Identifiable, Codable {
    var id = UUID()
    var name = ""
    var isReached = false
}

class AllGoals: ObservableObject {
    @Published var goals: [Goal]
    
    init() {
        self.goals = []
    }
}

