//
//  NewEntryForm.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 4/1/21.
//

import SwiftUI

struct NewEntryForm: View {
    @EnvironmentObject var log: Log
    @State private var newGym = ""
    @State private var newComments = ""
    @State private var newDate = Date()
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        DatePicker("Date", selection: $newDate, displayedComponents: .date)
                        TextField("Gym", text: $newGym)
                        TextField("Comments", text: $newComments)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150, alignment: .top)
                    }
                }
                
                Button(action: {
                    let entry = Entry()
                    entry.gym = newGym
                    entry.date = newDate
                    entry.comments = newComments
                    //entry.workoutPlan = newWorkoutPlan
                    self.log.entries.append(entry)
                }, label: {
                    Text("Add")
                        .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                })
                .padding()
            }
            .navigationTitle("New Entry")
        }
    }
}

struct NewEntryForm_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryForm()
    }
}
