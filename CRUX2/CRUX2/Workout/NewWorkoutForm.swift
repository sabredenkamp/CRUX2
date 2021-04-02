//
//  NewWorkoutForm.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct NewWorkoutForm: View {
    @EnvironmentObject var allWorkouts: AllWorkouts
    @State private var newName = ""
    @State private var newSets = ""
    @State private var newExerciseType = ""
    @State private var newTime = ""
    @State private var newDescription = ""
    @State private var newImage = ""
    @State private var newCat: Workout.Category = .gym
    
    @Environment(\.presentationMode) var presentationMode
    
    var exercises = ["Endurance", "Strength", "Recovery"]
    var pics = ["boulder","sport","recovery","hangboard","campusboard"]
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Name", text: $newName)
                        Picker("Exercise Type", selection: $newExerciseType) {
                            ForEach(exercises, id: \.self) { item in
                                Text(item)
                            }
                        }
                        Picker("Workout Category", selection: $newCat) {
                            ForEach(Workout.Category.allCases, id: \.self) { value in
                                Text(value.localizedName)
                                    .tag(value)
                            }
                        }
                        TextField("Sets", text: $newSets)
                        TextField("Time Required", text: $newTime)
                        TextField("Description", text: $newDescription)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150, alignment: .top)
                        Picker("Image", selection: $newImage) {
                            ForEach(pics, id: \.self) { item in
                                Text(item)
                            }
                        }
                    }
                }
                
                Button(action: {
                    let workout = Workout()
                    workout.name = newName
                    workout.exerciseType = newExerciseType
                    workout.sets = newSets
                    workout.description = newDescription
                    workout.imageName = newImage
                    workout.exerciseType = newExerciseType
                    workout.category = newCat
                    self.allWorkouts.workouts.append(workout)
                    
                }, label: {
                    Text("Add")
                        .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                })
                .padding(.bottom)
            }
            .navigationTitle("New Workout")
        }
    }
}

struct NewWorkoutForm_Previews: PreviewProvider {
    static var previews: some View {
        NewWorkoutForm()
    }
}
