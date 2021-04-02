//
//  Log.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

class Entry: Identifiable, Codable {
    var id = UUID()
    var date = Date()
    var gym = ""
    var comments = ""
    var workoutPlan = [String]()
    
}

class Log: ObservableObject {
    
    private static var documentsFolder: URL {
        do {
            return try FileManager.default.url(for: .documentDirectory,
                                                  in: .userDomainMask,
                                                  appropriateFor: nil,
                                                  create: false)
        } catch {
            fatalError("Can't find Documents Directory")
        }
    }
    
    private static var fileURL: URL {
            return documentsFolder.appendingPathComponent("CruxLog.data")
        }
    
    @Published var entries: [Entry]
    
    init() {
        self.entries = []
    }
    
//    func load() {
//        DispatchQueue.global(qos: .background).async { [weak self] in
//            guard let data = try? Data(contentsOf: Self.fileURL) else { return }
//                #if DEBUG
//                DispatchQueue.main.async {
//                    self?.entries = Entry.data
//        }
//                #endif
//                return
//            }
//        guard let logs = try? JSONDecoder().decode([Entry].self, from: data) else {
//                fatalError("Can't decode saved scrum data.")
//            }
//        DispatchQueue.main.async {
//            self?.entries = logs
//        }
//    }
//
//    func save() {
//        DispatchQueue.global(qos: .background).async { [weak self] in
//            guard let entries = self?.entries else { fatalError("Self out of scope") }
//            guard let data = try? JSONEncoder().encode(entries) else { fatalError("Error encoding data") }
//            do {
//                let outfile = Self.fileURL
//                try data.write(to: outfile)
//            } catch {
//                fatalError("Can't write to file")
//            }
//        }
//
//    }
//
    
    
    
}
