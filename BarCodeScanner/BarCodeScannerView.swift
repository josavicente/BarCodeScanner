//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI





struct BarCodeScannerView: View {
    
   @StateObject var viewModel = BarCodeScannerViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth:.infinity, maxHeight: 300)
                    .frame(maxHeight: 300)
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
                
            
                    
            }
            .navigationTitle("Bar Code Scanner")
            .alert(item:$viewModel.alertItem) {
                alertItem in Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dissmissButton)
            }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarCodeScannerView()
//    }
//}
