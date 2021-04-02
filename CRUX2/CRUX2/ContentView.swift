//
//  ContentView.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct ContentView: View {
        @State private var selection: Tab = .Workouts
        enum Tab {
            case Workouts
            case Plan
            case Log
            case Goals
        }
        
        var allWorkouts = AllWorkouts()
        var allGoals = AllGoals()
        var log = Log()
        
        var body: some View {
            TabView {
                WorkoutCategories()
                    .tabItem {
                        Label("Workouts", systemImage: "list.bullet")
                    }
                PlanToday()
                    .tabItem {
                        Label("Plan", systemImage: "calendar")
                    }
                LogList()
                    .tabItem {
                        Label("Log", systemImage: "bookmark")
                    }
                GoalList()
                    .tabItem {
                        Label("Goals", systemImage: "star")
                    }
            }
            .environmentObject(allGoals)
            .environmentObject(allWorkouts)
            .environmentObject(log)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
