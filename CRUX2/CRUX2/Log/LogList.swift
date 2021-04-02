//
//  LogList.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct LogList: View {
    @EnvironmentObject var log: Log
    var items: [Entry] {
        log.entries
    }
    
    var body: some View {
        NavigationView{
            List(log.entries, id: \.id) { entry in
                NavigationLink(destination: EntryDetail(entry: entry)) {
                    Text(Date2Str(date: entry.date))
                }
            }
            .navigationTitle("Log")
            .navigationBarItems(trailing: NavigationLink(destination: NewEntryForm()) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
            })
        }
    }
    
    func Date2Str(date: Date) -> String {
        let dateFormatter = DateFormatter()
        var dateStr: String
        dateFormatter.dateStyle = .short
        dateStr = dateFormatter.string(from: date)
        return dateStr
    }
}

struct LogList_Previews: PreviewProvider {
    static var previews: some View {
        LogList()
            .environmentObject(Log())
    }
}
