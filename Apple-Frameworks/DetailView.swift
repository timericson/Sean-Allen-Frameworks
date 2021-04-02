//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Tim Ericson on 1/4/21.
//

import SwiftUI

struct DetailView: View {
    
    let sampleFramework: Framework
    
    var body: some View {
        VStack(spacing: 10) {
            Image(sampleFramework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)
                
            Text("\(sampleFramework.description)")
                .frame(width: 350, height: 350)
                .font(.body)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        
            
            Button {
                //isNight.toggle()
            } label: {
                DetailViewButton(title: "Learn More",
                              textColor: .white,
                              backGroundColor: .red)
            }
            .padding(.top, 50)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(sampleFramework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
