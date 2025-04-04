//
//  ButtonStyle.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 31/03/25.
//

import SwiftUI
import Foundation

public struct ButtonWithImageStyle: ViewModifier {
    
    public init() {}
    
    public func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.clear)
    }
}
