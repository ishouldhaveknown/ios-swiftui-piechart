//
//  ContentView.swift
//  piechart
//
//  Created by Tomi on 21.06.24.
//

import SwiftUI

struct ContentView: View {

    let info: [Info]

    var body: some View {
        let totalIncome = info.reduce(0) { $0 + $1.income }
        var startAngle: Angle = .degrees(0)
        let slices = info.map { item -> PieSliceData in
            let angle = Angle(degrees: (item.income / totalIncome) * 360)
            let slice = PieSliceData(
                startAngle: startAngle,
                endAngle: startAngle + angle,
                color: item.color,
                source: item.source,
                income: item.income,
                year: item.year
            )
            startAngle += angle
            return slice
        }

        return PieChartView(slices: slices)
            .padding()
    }
}
