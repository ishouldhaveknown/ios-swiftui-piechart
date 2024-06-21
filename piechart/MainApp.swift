//
//  piechartApp.swift
//  piechart
//
//  Created by Tomi on 21.06.24.
//

import SwiftUI

@main
struct piechartApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(info: info1)
        }
    }
}

// Earth Tones
let info1: [Info] = [
    Info(source: "Loans", income: 50000.0, year: 2020, color: Color(red: 0.82, green: 0.41, blue: 0.12)), // Earth brown
    Info(source: "Investments", income: 30000.0, year: 2020, color: Color(red: 0.47, green: 0.67, blue: 0.18)), // Earth green
    Info(source: "Savings", income: 20000.0, year: 2020, color: Color(red: 0.36, green: 0.54, blue: 0.66)), // Earth blue
    Info(source: "Credit Cards", income: 15000.0, year: 2020, color: Color(red: 0.94, green: 0.81, blue: 0.61)), // Earth beige
    Info(source: "Other", income: 5000.0, year: 2020, color: Color(red: 0.76, green: 0.56, blue: 0.35)) // Earth tan
]

// Cool Tones
let info2: [Info] = [
    Info(source: "Loans", income: 50000.0, year: 2020, color: Color(red: 0.4, green: 0.6, blue: 0.8)), // Cool blue
    Info(source: "Investments", income: 30000.0, year: 2020, color: Color(red: 0.4, green: 0.8, blue: 0.6)), // Cool green
    Info(source: "Savings", income: 20000.0, year: 2020, color: Color(red: 0.6, green: 0.4, blue: 0.8)), // Cool purple
    Info(source: "Credit Cards", income: 15000.0, year: 2020, color: Color(red: 0.4, green: 0.8, blue: 0.8)), // Cool teal
    Info(source: "Other", income: 5000.0, year: 2020, color: Color(red: 0.8, green: 0.8, blue: 0.4)) // Cool yellow
]

// Warm Tones
let info3: [Info] = [
    Info(source: "Loans", income: 50000.0, year: 2020, color: Color(red: 0.9, green: 0.3, blue: 0.3)), // Warm red
    Info(source: "Investments", income: 30000.0, year: 2020, color: Color(red: 0.9, green: 0.5, blue: 0.3)), // Warm orange
    Info(source: "Savings", income: 20000.0, year: 2020, color: Color(red: 0.9, green: 0.7, blue: 0.3)), // Warm yellow
    Info(source: "Credit Cards", income: 15000.0, year: 2020, color: Color(red: 0.7, green: 0.9, blue: 0.3)), // Warm lime
    Info(source: "Other", income: 5000.0, year: 2020, color: Color(red: 0.5, green: 0.9, blue: 0.3)) // Warm green
]
