//
//  ContentView.swift
//  TaskManager
//
//  Created by Ramill Ibragimov on 24.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = TaskSection.all
    @State private var allTasks = Task.examples()
    @State private var userCreatedGroups: [TaskGroup] = TaskGroup.examples()
    
    var body: some View {
        NavigationSplitView {
            SidebarView(userCreatedGroups: userCreatedGroups, selection: $selection)
        } detail: {
            switch selection {
            case .all:
                TaskListView(title: "all", tasks: allTasks)
            case .done:
                TaskListView(title: "all", tasks: allTasks.filter({ $0.isCompleted }))
            case .upcoming:
                TaskListView(title: "all", tasks: allTasks.filter({ !$0.isCompleted }))
            case .list(let taskGroup):
                TaskListView(title: taskGroup.title, tasks: taskGroup.tasks)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
