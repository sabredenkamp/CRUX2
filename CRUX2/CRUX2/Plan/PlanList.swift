//
//  PlanList.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 4/1/21.
//

import SwiftUI

struct PlanList: View {
    
    //@EnvironmentObject var modelData: ModelData
    var items = Array(1...1000)
    let layout = [
        GridItem(.flexible(minimum: 100))
    ]
    let myFormatter = DateFormatter()
    init() {
            myFormatter.dateStyle = .short
            //items = Array(1...1000).indices.map({ $0 })
        }
    
    
    @EnvironmentObject var allPlans: AllPlans
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout,spacing: 20,content: {
                ForEach(items, id: \.self) { item in
                    HStack(alignment: .center) {
                        Text(myFormatter.string(from: Calendar.current.date(from: DateComponents(
                                    year: 2021,
                                    month: 4,
                                    day: item))!))
                            .fontWeight(.bold)
                        PlanRow()
                        }
                }
                //Divider()
                .padding()
            })
        }
    }
}


struct PlanList_Previews: PreviewProvider {
    static var previews: some View {
        PlanList()
    }
}

