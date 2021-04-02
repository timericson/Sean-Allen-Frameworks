//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Tim Ericson on 30/3/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }

            .navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


struct FrameworkTitleView: View {
    
    
    let framework: Framework
    
    var body: some View {
        
        VStack(spacing: 10) {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)
                
            Text("\(framework.name)")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
