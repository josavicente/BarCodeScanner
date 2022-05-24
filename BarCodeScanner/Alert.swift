//
//  Alert.swift
//  BarCodeScanner
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import Foundation
import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dissmissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Invalid Device Input", dissmissButton: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: "Invalid Scan type", message: "Invalid Scan type", dissmissButton: .default(Text("Ok")))
}
