//
//  WorkoutCategories.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct WorkoutCategories: View {
    @EnvironmentObject var allWorkouts: AllWorkouts
    var body: some View {
        NavigationView {
            List {
                ForEach(allWorkouts.categories.keys.sorted(), id: \.self) { key in
                    WorkoutRow(categoryName: key, items: allWorkouts.categories[key]!)
                }
            }
            .navigationTitle("Workouts")
            .navigationBarItems(trailing: NavigationLink(destination: NewWorkoutForm()) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
            })
        }
    }
    
}

struct WorkoutCategories_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCategories()
            .environmentObject(AllWorkouts())
    }
}
