//
//  Task.swift
//  TaskManager
//
//  Created by Ramill Ibragimov on 24.08.2023.
//

import Foundation

struct Task: Identifiable, Hashable {
    
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Do something", dueDate: Calendar.current.date(bySetting: .day, value: 2, of: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "Learn Swift"),
            Task(title: "Learn SwiftUI", isCompleted: true),
            Task(title: "Learn UIKit", dueDate: Calendar.current.date(bySetting: .day, value: 1, of: Date())!)
        ]
    }
}
