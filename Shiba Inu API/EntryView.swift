//
//  EntryView.swift
//  Shiba Inu API
//
//  Created by Dhanush Tipparaju on 2/27/23.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        AsyncImage(url: URL(string: "api link here"))
    }
    func getEntrie() async {
        let query = "http://shibe.online/api/shibes?count=5"
        if let url = URL(string: query) {
            if let (data, _) = try? await URLSession.shared.data(from: url) {
                if let decodeResponse = try? JSONDecoder().decode([String].self, from: data) {
                }
            }
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}



