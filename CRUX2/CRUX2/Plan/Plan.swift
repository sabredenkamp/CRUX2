//
//  Plan.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 4/1/21.
//

import SwiftUI

class Plan: Identifiable, Codable {
    var id = UUID()
    var workoutPlan = [String]()
}

class AllPlans: ObservableObject {
    @Published var plans: [Plan]
    
    init() {
        self.plans = []
    }
}
