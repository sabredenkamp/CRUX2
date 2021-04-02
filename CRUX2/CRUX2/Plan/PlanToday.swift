//
//  PlanToday.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI


struct PlanToday: View {
    var body: some View {
        VStack {
            Text("Workout Plan")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            NavigationView {
                NavigationLink(destination: PlanList()) {
                    Text("Full Training Plan")
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct PlanToday_Previews: PreviewProvider {
    static var previews: some View {
        PlanToday()
    }
}
