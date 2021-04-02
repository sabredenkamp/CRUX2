//
//  NewGoalForm.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct NewGoalForm: View {
    @EnvironmentObject var allGoals: AllGoals
    @State private var newName = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("goal", text: $newName)
                    }
                }
                Button(action: {
                    let goal = Goal()
                    goal.name = newName
                    self.allGoals.goals.append(goal)
                }, label: {
                    Text("Add")
                        .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                })
                .padding()
            }
            .navigationTitle("New Goal")
        }
    }
}

struct NewGoalForm_Previews: PreviewProvider {
    static var previews: some View {
        NewGoalForm()
    }
}
