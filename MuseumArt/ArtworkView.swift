//
//  ArtworkView.swift
//  MuseumArt
//
//  Created by Gianluca Orpello for the Developer Academy on 16/12/21.
//
//


import SwiftUI

struct ArtworkView: View {
    var body: some View {
        NavigationView{
            Text("Hello, world!")
                .padding()
                .navigationTitle(Text("Artwork"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkView()
    }
}
