//
//  WorkoutRow.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct WorkoutRow: View {
    var categoryName: String
    var items: [Workout]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(items) { workout in
                        NavigationLink(destination: WorkoutDetail(workout: workout)) {
                            WorkoutItem(workout: workout)
                        }
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

struct WorkoutRow_Previews: PreviewProvider {
    static var workouts = AllWorkouts().workouts
    static var previews: some View {
        WorkoutRow(
            categoryName: workouts[0].category.rawValue,
            items: Array(workouts.prefix(4))
        )
    }
}
