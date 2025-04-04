//
//  TableWithLabelModel.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 02/04/25.
//

import SwiftUI

// MARK: - TableWithLabelModel
public struct TableWithLabelModel: WidgetTableContentProtocol {
    public var contentType: WidgetContentType
    public var tableTitle: String
    public var tableData: [TableWithLabelItem]
    public var labelTitle: String?
    public var labelValue: String?

    public init(
        contentType: WidgetContentType,
        tableTitle: String,
        tableData: [TableWithLabelItem],
        labelTitle: String? = nil,
        labelValue: String? = nil
    ) {
        self.contentType = contentType
        self.tableTitle = tableTitle
        self.tableData = tableData
        self.labelTitle = labelTitle
        self.labelValue = labelValue
    }
}

// MARK: - TableWithLabelItem
public struct TableWithLabelItem {
    public var label1, label2: String

    public init(label1: String, label2: String) {
        self.label1 = label1
        self.label2 = label2
    }
}
