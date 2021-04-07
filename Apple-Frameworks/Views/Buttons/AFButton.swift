//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Tim Ericson on 3/4/21.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .foregroundColor(Color.white)
            .background(Color.red)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Learn More")
    }
}


