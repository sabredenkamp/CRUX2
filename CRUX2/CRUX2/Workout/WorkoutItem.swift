//
//  WorkoutItem.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct WorkoutItem: View {
    var workout: Workout

    var body: some View {
        VStack(alignment: .leading) {
            workout.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            HStack {
                Text(workout.name)
                    .foregroundColor(.primary)
                    .font(.caption)
                if workout.isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
            }
        }
        .padding(.leading, 15)
    }
}

struct WorkoutItem_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutItem(workout: AllWorkouts().workouts[0])
    }
}

