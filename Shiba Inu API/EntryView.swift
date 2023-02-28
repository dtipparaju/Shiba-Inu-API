//
//  EntryView.swift
//  Shiba Inu API
//
//  Created by Dhanush Tipparaju on 2/27/23.
//

import SwiftUI

struct EntryView: View {
    @State private var entries = [String]()
    @State private var showingAlert = false
    var body: some View {
            List (entries, id: \.self) { entry in
                VStack(alignment: .leading) {
                    Link(destination: URL(string: entry)!) {
                        Text(entry)
                    }
                }
            }
            .task {
                await getEntry()
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Loading Error"),
                      message: Text("There was a problem loading the API"),
                      dismissButton: .default(Text("OK")))
            }
        
    }
    
    func getEntry() async {
        let query = "https://shibe.online/api/shibes?count=10"
        if let url = URL(string: query) {
            if let (data, _) = try? await URLSession.shared.data(from: url) {
                if let decodeResponse = try? JSONDecoder().decode([String].self, from: data) {
                    entries = decodeResponse
                    return
                }
            }
        }
        showingAlert = true
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}



