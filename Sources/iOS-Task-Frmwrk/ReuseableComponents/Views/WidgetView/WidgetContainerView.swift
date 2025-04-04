//
//  WidgetView.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 02/04/25.
//
import SwiftUI

// MARK: - WidgetContainerView
public struct WidgetContainerView: View {
    public let widgetModel: WidgetDataModel
    public let onSelection: (Int) -> Void

    public init(widgetModel: WidgetDataModel, onSelection: @escaping (Int) -> Void) {
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
            if let tableModel = widgetModel.widgetContent as? TableWithLabelModel {
                TableWithLabelView(tableWithLabelModel: tableModel) { selectedIndex in
                    // Call the onSelection closure with the selected widget model
                    onSelection(selectedIndex)
                }
            }
        }
    }
}
