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
            VStack{
                viewLink(pictureNumber: "1")
                viewLink(pictureNumber: "2")
                viewLink(pictureNumber: "3")
                viewLink(pictureNumber: "4")
                viewLink(pictureNumber: "5")
                
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

struct viewLink: View {
    var pictureNumber: String
    var body: some View{
        NavigationLink("Shiba Inu Picture \(pictureNumber)", destination: EntryView())
            .padding()
            .font(.title).bold()
            .onTapGesture {
            
            }
    }
}
