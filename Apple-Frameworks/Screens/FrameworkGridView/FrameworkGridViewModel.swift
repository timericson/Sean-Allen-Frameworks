//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Tim Ericson on 4/4/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
