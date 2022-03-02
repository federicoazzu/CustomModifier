//
//  ContentView.swift
//  CustomModifier
//
//  Created by Federico on 02/03/2022.
//

import SwiftUI

extension View {
    func addNavigationView(title: String) -> some View {
        NavigationView {
            self
                .navigationTitle(title)
        }
    }
    
    func centerH() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    func specialFont() -> some View {
        self
            .font(.system(size: 20, weight: .bold, design: .monospaced))
            .foregroundColor(.indigo)
    }
    
}

struct ContentView: View {
    var body: some View {
        Form {
            Text("Hello, world!")
                .specialFont()
                .centerH()
            
            Button("Press me") {
                print("Button pressed.")
            }
            .centerH()
        }
        .addNavigationView(title: "Settings")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
