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
    let title: Text
    let message: Text
    let dissmissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"), message: Text("Invalid Device Input"), dissmissButton: .default(Text("Ok")))
    static let invalidScannedType = AlertItem(title: Text("Invalid Scan type"), message: Text("Invalid Scan type"), dissmissButton: .default(Text("Ok")))
}
