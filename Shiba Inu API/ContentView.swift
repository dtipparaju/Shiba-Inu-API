//
//  ContentView.swift
//  Shiba Inu API
//
//  Created by Dhanush Tipparaju on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Lets see some dogs!", destination: EntryView())
                    .font(.title).bold()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Categories: Codable {
    var categories: [String]
}

