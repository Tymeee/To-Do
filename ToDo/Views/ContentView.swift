//
//  ContentView.swift
//  ToDo
//
//  Created by E2318556 on 25/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var realManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            TasksView()
                .environmentObject(realManager)
            
            SmallAddButton()
                .padding(.init(top: 10, leading: 10, bottom: 40, trailing: 10))
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            
                AddTaskView()
                .environmentObject(realManager)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 255/255, green: 225/255, blue: 105/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
