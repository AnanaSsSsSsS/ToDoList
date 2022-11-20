//
//  TodoListApp.swift
//  TodoList
//
//  Created by macbook on 01.10.2022.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
        
    var body: some Scene {
        WindowGroup {
            NavigationView{  // теперь все вью в проекте будут 
                ListView()  // старотовое View
            }
            .environmentObject(listViewModel)
        }
    }
}
