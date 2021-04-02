//
//  WorkoutDetail.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct WorkoutDetail: View {
    @EnvironmentObject var allWorkouts: AllWorkouts
    var workout: Workout
    
    var workoutIndex: Int {
        allWorkouts.workouts.firstIndex(where: { $0.id == workout.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack{
                workout.image
                    .resizable()
                    .scaledToFill()
                VStack(alignment: .leading) {
                    
                    HStack{
                        Text(workout.name)
                            .font(.title)
                        FavoriteButton(isSet: $allWorkouts.workouts[workoutIndex].isFavorite)
                    }
                    HStack {
                        Text(workout.exerciseType)
                        Spacer()
                        Text(workout.category.rawValue)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Divider()
                    HStack{
                        Text("Sets:")
                            .font(.title2)
                        Text(workout.sets)
                    }
                    HStack{
                        Text("Time:")
                            .font(.title2)
                        Text(workout.time)
                    }
                    Text("Description: ")
                        .font(.title2)
                    Text(workout.description)
                }
                .padding()
            }
        }
    }
    
    
}

struct WorkoutDetail_Previews: PreviewProvider {
    static let allWorkouts = AllWorkouts()
    static var previews: some View {
        WorkoutDetail(workout: AllWorkouts().workouts[0])
            .environmentObject(allWorkouts)
    }
}

