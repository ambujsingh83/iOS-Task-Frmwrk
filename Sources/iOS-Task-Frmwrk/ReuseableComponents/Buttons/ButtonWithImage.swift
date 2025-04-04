//
//  ButtonWithImage.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 31/03/25.
//

import SwiftUI

public struct ButtonWithImage : View {
    public let imageName: String
    public let title: String
    public let action: () -> Void
    
    public init(imageName: String, title: String, action: @escaping () -> Void) {
        self.imageName = imageName
        self.title = title
        self.action = action
    }
    
   public var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Image(imageName, bundle: Bundle.module)
                Text(title)
            }
        }
        .modifier(ButtonWithImageStyle())
    }
}
