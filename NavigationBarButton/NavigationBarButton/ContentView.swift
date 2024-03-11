//
//  ContentView.swift
//  NavigationBarButton
//
//  Created by 村岡海人 on 2024/03/11.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var company = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Form{
                    Section {
                        TextField(
                            "First Name",
                            text: $firstName
                        )
                        TextField(
                            "Last Name",
                            text: $lastName
                        )
                        TextField(
                            "Company",
                            text: $company
                        )
                    } header: {
                        Text("Personal Info")
                    }
                }
            }
            .navigationTitle("Sample")
            .toolbar(content: {
                Button("Save") {
                    print("Save tapped")
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
