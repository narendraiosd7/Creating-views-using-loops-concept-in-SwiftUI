//
//  ContentView.swift
//  Creating views in a loop
//
//  Created by Vadde Narendra on 9/13/20.
//  Copyright © 2020 Narendra Vadde. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Narendra", "Surendra", "Indra", "Phanindra", "Bhupendra", "Jhogendra"]
    @State private var selectedStudent = "Narendra"
    
    var body: some View {
        
        //Method - 1:
//        Form {
//            ForEach(0..<100) { number in
//                Text("Serial No: \(number)")
//            }
//        }
        
        //Method - 2:
//        Form {
//            ForEach(0..<100) {
//                Text("Serial No: \($0)")
//            }
//        }
        
        Picker("Select Your Student", selection: $selectedStudent) {
            ForEach(0..<students.count) {
                Text(self.students[$0])
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
