//
//  Workout.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

class Workout: Identifiable, Codable {
    var id = UUID()
    var name = ""
    var sets = ""
    var time = ""
    var description = ""
    var exerciseType = ""
    var isFavorite = false

    var imageName = ""
    var image: Image {
        Image(imageName)
    }
    
    var category: Category = .gym
    enum Category: String, CaseIterable, Codable {
        case gym = "Gym"
        case boulder = "Boulder"
        case sport = "Sport"
        case recovery = "Recovery"
        
        var localizedName: LocalizedStringKey { LocalizedStringKey(rawValue) }
    }
    }

class AllWorkouts: ObservableObject {
    @Published var workouts: [Workout]
    
    init() {
        self.workouts = []
    }
    
    var categories: [String: [Workout]] {
        Dictionary(
            grouping: workouts,
            by: { $0.category.rawValue }
        )
    }
}


