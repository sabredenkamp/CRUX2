//
//  GoalItem.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct GoalItem: View {

    @EnvironmentObject var allGoals: AllGoals
    var goal: Goal
    
    var goalIndex: Int {
        allGoals.goals.firstIndex(where: { $0.id == goal.id })!
    }
    
    var body: some View {
        HStack(alignment: .top) {
            GoalReachedButton(isSet: $allGoals.goals[goalIndex].isReached)
            VStack(alignment: .leading) {
                Text(goal.name)
                    .font(.title2)
            }
            
            
        }
    }
    
    struct GoalItem_Previews: PreviewProvider {
        static var allGoals = AllGoals()
        static var previews: some View {
            GoalItem(goal: AllGoals().goals[0])
                .environmentObject(allGoals)
        }
    }
}

