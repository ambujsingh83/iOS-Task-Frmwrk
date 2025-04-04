//
//  WidgetView.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 02/04/25.
//
import SwiftUI

public struct WidgetView: View {
    public let widgetModel: WidgetModel
    public let onSelection: (Int) -> Void

    public init(widgetModel: WidgetModel, onSelection: @escaping (Int) -> Void) {
        self.widgetModel = widgetModel
        self.onSelection = onSelection
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            contentView()
        }
    }

    @ViewBuilder func contentView() -> some View {
        switch widgetModel.widgetContent.contentType {
        case .table:
            if let tableModel = widgetModel.widgetContent as? ListWithLabelModel {
                ListWithLabelView(listWithLabelModel: tableModel) { selectedIndex in
                    // Call the onSelection closure with the selected widget model
                    onSelection(selectedIndex)
                }
            }
        }
    }
}
