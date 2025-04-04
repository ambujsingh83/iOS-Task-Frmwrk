//
//  ListWithLabelView.swift
//  ios-task-fwrk-ui
//
//  Created by Ambuj Singh on 02/04/25.
//

import SwiftUI

public struct ListWithLabelView: View {
    public var listWithLabelModel: ListWithLabelModel
    public var onSelection: (Int) -> Void

    public var body: some View {
        List {
            // Optional header for the list
            if let labelTitle = listWithLabelModel.labelTitle,
               let labelValue = listWithLabelModel.labelValue {
                Section(header: Text("\(labelTitle) - \(labelValue)").font(.headline)) {
                    EmptyView() // Placeholder for the header
                }
            }

            // List items
            ForEach(listWithLabelModel.listData.indices, id: \.self) { index in
                let item = listWithLabelModel.listData[index]
                Button(action: {
                    onSelection(index) // Trigger the onSelection closure
                }) {
                    widgetListItemView(label1: item.label1, label2: item.label2)
                }
                .buttonStyle(PlainButtonStyle()) // Remove default button styling
            }
        }
    }

    @ViewBuilder
    func widgetListItemView(label1: String, label2: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(label1)
                    .font(.body)
                Spacer()
                Text(label2)
                    .font(.body)
                    .foregroundColor(.red)
            }
        }
    }
}
