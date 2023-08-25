//
//  StaticTaskListView.swift
//  TaskManager
//
//  Created by Ramill Ibragimov on 24.08.2023.
//

import SwiftUI

struct StaticTaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
        }
    }
}

struct StaticTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTaskListView(title: "All", tasks: Task.examples())
    }
}
