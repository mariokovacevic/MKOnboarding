//
//  MKOnboardingItem.swift
//  MKOnboarding
//
//  Created by Mario Kovacevic on 01/09/2018.
//

import Foundation

public struct MKOnboardingItem {
    public var title: String
    public var description: String
    public var imageName: String
    
    public init(title: String, description: String, imageName: String) {
        self.title = title
        self.description = description
        self.imageName = imageName
    }
}
