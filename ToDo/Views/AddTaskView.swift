//
//  AddTaskView.swift
//  AddTaskView
//
//  Created by E2318556 on 25/12/2564 BE.
//

import SwiftUI

@available(iOS 15.0, *)

struct AddTaskView: View {
    
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(
                "Enter your task here",
                text: $title
            )
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                    dismiss()
                
            } label: {
                Text("Add task")
                    .foregroundColor(.yellow)
                    .padding()
                    .padding(.horizontal)
                    .background(.black)
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(red: 255/255, green: 225/255, blue: 105/255))
        
    }
}


struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}

