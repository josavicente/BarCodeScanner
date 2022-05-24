//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct BarCodeScannerView: View {
    
    @State private var scannedCode = ""

    
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedCode: $scannedCode)
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
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarCodeScannerView()
    }
}
