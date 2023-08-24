//
//  SidebarView.swift
//  TaskManager
//
//  Created by Ramill Ibragimov on 24.08.2023.
//

import SwiftUI

struct SidebarView: View {
    
    let userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskSection.allCases) { selection in
                    Label(selection.displayName, systemImage: selection.iconName)
                        .tag(selection)
                }
            }
            
            Section("Your Groups") {
                ForEach(userCreatedGroups) { group in
                    Label(group.title, systemImage: "folder")
                        .tag(TaskSection.list(group))
                }
            }
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView(userCreatedGroups: TaskGroup.examples(), selection: .constant(.all))
            .listStyle(.sidebar)
    }
}
