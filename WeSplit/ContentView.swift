//
//  ContentView.swift
//  WeSplit
//
//  Created by Luis León on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numOfPeople = 0
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View{
        NavigationStack{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }.pickerStyle(.navigationLink)
                    
                }
                
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }.navigationTitle("We Split")
        }
    }
}

#Preview {
    ContentView()
}
