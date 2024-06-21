//
//  PieSliceData.swift
//  piechart
//
//  Created by Tomi on 21.06.24.
//

import SwiftUI

struct PieSliceData: Identifiable, Equatable {
    var id = UUID()
    var startAngle: Angle
    var endAngle: Angle
    var color: Color
    var source: String
    var income: Double
    var year: Int

    static func == (lhs: PieSliceData, rhs: PieSliceData) -> Bool {
        lhs.id == rhs.id
    }
}
