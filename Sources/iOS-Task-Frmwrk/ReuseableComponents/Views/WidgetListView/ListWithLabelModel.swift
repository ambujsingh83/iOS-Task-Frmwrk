//
//  ListWithLabelModel.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 02/04/25.
//

import SwiftUI

public struct ListWithLabelModel: WidgetTableContentProtocol {
    public var contentType: WidgetContentType
    public var listTilte: String
    public var listData: [ListWithLabelViewItem]
    public var labelTitle: String?
    public var labelValue: String?

    public init(
        contentType: WidgetContentType,
        listTilte: String,
        listData: [ListWithLabelViewItem],
        labelTitle: String? = nil,
        labelValue: String? = nil
    ) {
        self.contentType = contentType
        self.listTilte = listTilte
        self.listData = listData
        self.labelTitle = labelTitle
        self.labelValue = labelValue
    }
}

public struct ListWithLabelViewItem {
    public var label1, label2: String

    public init(label1: String, label2: String) {
        self.label1 = label1
        self.label2 = label2
    }
}
