//
//  ContentView.swift
//  QuestionsApp
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            VStack(spacing: 30.0) {
                
                Text("Test your Swift knowledge!")
                NavigationLink(destination: q1page()) {
                    Text("Click here to begin")
                }
            }
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
