//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct BarCodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack{
                Rectangle()
                    .frame(maxWidth:.infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text("Not yet Scanner")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
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
