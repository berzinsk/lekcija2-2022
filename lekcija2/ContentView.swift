//
//  ContentView.swift
//  lekcija2
//
//  Created by karlis.berzins on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    private var sample = "Sample"
    @State private var textFieldValue: String = ""
    @State private var textFieldVisible = false

    private let students = ["John", "Jane", "Carl"]
    @State private var selectedStudent = "John"

    var body: some View {
        VStack {
            Text("Hello, world! This is from lecture 2! \(sample)")
                .padding()
            Text("Placeholder")
            Button("Tap me") {
                buttonTapped()
            }
            TextField("Enter your text", text: $textFieldValue)
            Text("We have entered: \(textFieldValue)")
            if textFieldVisible {
                Text("Additional text visible")
            }
            HStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Spacer()
                    .frame(width: 20)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                VStack {
                    Text("Another text")
                    Text("Third text")
                }
            }
            Picker("Choose a student", selection: $selectedStudent) {
                ForEach(students, id: \.self) { student in
                    Text(student)
                }
            }
            .pickerStyle(.wheel)
            Text("Student selected: \(selectedStudent)")
        }
    }

    private func buttonTapped() {
        print("Button tapped: \(textFieldValue)")
        textFieldVisible = !textFieldVisible
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
