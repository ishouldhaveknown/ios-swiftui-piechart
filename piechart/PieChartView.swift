//
//  PieChartView.swift
//  piechart
//
//  Created by Tomi on 21.06.24.
//

import SwiftUI

struct PieChartView: View {

    let slices: [PieSliceData]

    @State private var selectedSlice: PieSliceData?

    var body: some View {
        VStack {
            ZStack {
                ForEach(slices) { slice in
                    PieSliceView(pieSliceData: slice, isSelected: selectedSlice == slice)
                        .onTapGesture {
                            selectedSlice = slice
                        }
                }
            }
            .frame(width: 300, height: 300)

            VStack {
                if let selectedSlice = selectedSlice {
                    VStack {
                        Text("Source: \(selectedSlice.source)")
                            .font(.headline)
                        Text("Year: \(selectedSlice.year)")
                            .font(.subheadline)
                        Text("Income: $\(selectedSlice.income, specifier: "%.2f")")
                            .font(.subheadline)
                    }
                } else {
                    Text("Tap on a slice to see details")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .frame(height: 100) // Reserve space for selected text
            .padding()
        }
    }
}
