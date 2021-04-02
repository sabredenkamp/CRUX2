//
//  EntryDetail.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 4/1/21.
//

import SwiftUI

struct EntryDetail: View {
    @EnvironmentObject var log: Log
    var entry: Entry
    
    var entryIndex: Int {
        log.entries.firstIndex(where: { $0.id == entry.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text(Date2Str(date: entry.date))
                    .font(.title)
                Divider()
                VStack(alignment: .leading) {
                    HStack{
                    Text("Sets:")
                        .font(.title2)
                    Text(entry.gym)
                    }
                    VStack(alignment: .leading) {
                        Text("Comments:")
                            .font(.title2)
                        Text(entry.comments)
                    }
                }
            //.padding()
            }
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

struct EntryDetail_Previews: PreviewProvider {
    static let log = Log()
    static var previews: some View {
        EntryDetail(entry: Log().entries[0])
            .environmentObject(log)
    }
}

