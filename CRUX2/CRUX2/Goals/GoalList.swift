//
//  GoalList.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct GoalList: View {
    @EnvironmentObject var allGoals: AllGoals
    var items: [Goal] {
        allGoals.goals
    }
    
    var body: some View {
        NavigationView{
            List(allGoals.goals, id: \.id) { goal in
                GoalItem(goal: goal)
            }
            .navigationTitle("Goals")
            .navigationBarItems(trailing: NavigationLink(destination: NewGoalForm()) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
            })
        }
    }
}

struct GoalList_Previews: PreviewProvider {
    static var previews: some View {
        GoalList()
            .environmentObject(AllGoals())
    }
}
