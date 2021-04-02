//
//  PlanRow.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 4/1/21.
//

import SwiftUI

struct PlanRow: View {
    @EnvironmentObject var allWorkouts: AllWorkouts
    @EnvironmentObject var allPlans: AllPlans
    @State var workoutPlan = [String]()

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("workouts:")
                PlanDropDown()
            }
            Divider()
        }
    }
}

struct PlanRow_Previews: PreviewProvider {
    static var allPlans = AllPlans()
    static var previews: some View {
        PlanRow()
    }
}
