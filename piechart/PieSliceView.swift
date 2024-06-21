//
//  PieSliceView.swift
//  piechart
//
//  Created by Tomi on 21.06.24.
//

import SwiftUI

struct PieSliceView: View {
    var pieSliceData: PieSliceData
    var isSelected: Bool

    var body: some View {
        GeometryReader { geometry in
            let width: CGFloat = min(geometry.size.width, geometry.size.height)
            let height = width
            let center = CGPoint(x: width * 0.5, y: height * 0.5)
            let radius = width * 0.5 * (isSelected ? 1.1 : 1.0)

            Path { path in
                path.move(to: center)
                path.addArc(
                    center: center,
                    radius: radius,
                    startAngle: pieSliceData.startAngle,
                    endAngle: pieSliceData.endAngle,
                    clockwise: false
                )
            }
            .fill(pieSliceData.color)
            .shadow(radius: 2)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}
