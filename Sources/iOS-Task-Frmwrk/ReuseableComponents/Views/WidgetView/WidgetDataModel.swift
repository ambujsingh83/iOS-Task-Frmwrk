//
//  WidgetDataModel.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 02/04/25.
//

import Foundation
import SwiftUI

public protocol WidgetTableContentProtocol {
    var contentType: WidgetContentType { get set }
}

public enum WidgetContentType: String, CaseIterable {
    case table
}

// MARK: - WidgetDataModel
public class WidgetDataModel {
    public var title: String
    public var subtitle: String
    public var widgetContent: WidgetTableContentProtocol
    
    public init(title: String, subtitle: String, widgetContent: WidgetTableContentProtocol) {
        self.title = title
        self.subtitle = subtitle
        self.widgetContent = widgetContent
    }
}
