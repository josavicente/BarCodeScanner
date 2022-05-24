//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

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


struct BarCodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var alertItem : AlertItem?
    
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth:.infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text( scannedCode.isEmpty ? "Not yet Scanner" : "Scanned Code")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
            
                    
            }
            .navigationTitle("Bar Code Scanner")
            .alert(item: $alertItem) {
                alertItem in Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dissmissButton)
            }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarCodeScannerView()
//    }
//}
