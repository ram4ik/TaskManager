//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Ramill Ibragimov on 24.08.2023.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Task") {
                Button("Add new Group") {
                    
                }
                .keyboardShortcut(KeyEquivalent("r"), modifiers: .command)
            }
            CommandGroup(after: .newItem) {
                Button("Add new Group") {
                    
                }
            }
        }
    }
}
