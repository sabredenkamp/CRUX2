//
//  DropDown.swift
//  crux
//
//  Created by Sophie Bredenkamp on 3/29/21.
//

import SwiftUI

struct PlanDropDown: View {
    @EnvironmentObject var allWorkouts: AllWorkouts
    @State var expand = false
    @State var workoutPlan = [String]()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("Workouts")
                    Image(systemName: expand ? "chevron.up" : "chevron.down").resizable().frame(width: 15, height: 8)
                }
                .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .onTapGesture {
                    self.expand.toggle()
                }
                if expand {
                    ForEach(allWorkouts.workouts) { workout in
                        Button (action: {
                            workoutPlan.append(workout.name)
                        }) {
                            Text(workout.name)
                                //.fontWeight(.heavy)
                        }.foregroundColor(.white)
                    }
                    
                }
                        }
            .padding(7)
            .background(Color.blue)
            .cornerRadius(10)
            .animation(.spring())

            List {
                ForEach(self.workoutPlan, id: \.self) { item in
                    Text(item)
                }
                .onDelete(perform: removeItem)
            }
            .frame(width: 180, height: 170, alignment: .center)
        }
    }
    func removeItem(at offset: IndexSet) {
        workoutPlan.remove(atOffsets: offset)
    }
}


struct PlanDropDown_Previews: PreviewProvider {
    
    static var previews: some View {
        PlanDropDown()
    }
}
