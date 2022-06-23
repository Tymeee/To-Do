//
//  SmallAddButton.swift
//  SmallAddButton
//
//  Created by E2318556 on 25/12/2564 BE.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50)
                .foregroundColor(.black)
            
            
            Image(systemName: "pawprint.fill")
                .foregroundColor(.yellow)
        }
        .frame(height: 50)
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
