//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Tim Ericson on 7/4/21.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        
        HStack() {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 70, height: 70)
                .aspectRatio(contentMode: .fit)
                
            Text("\(framework.name)")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
        
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
