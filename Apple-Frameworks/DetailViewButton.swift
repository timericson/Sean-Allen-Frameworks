//
//  Button.swift
//  Apple-Frameworks
//
//  Created by Tim Ericson on 1/4/21.
//

import SwiftUI



struct DetailViewButton: View {
    
    var title: String
    var textColor: Color
    var backGroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .foregroundColor(textColor)
            .background(backGroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
