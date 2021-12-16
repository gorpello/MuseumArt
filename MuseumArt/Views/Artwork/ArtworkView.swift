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
            TabView {
                resizedImage(with: "CollezioneAvalos")
                resizedImage(with: "CollezioneDeCiccio")
                resizedImage(with: "CollezioneFarnese")
                resizedImage(with: "capodimonte")
                resizedImage(with: "ManifestiMele")
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            .navigationTitle(Text("Artwork"))
        }
    }
    
    func resizedImage(with name: String) -> some View {
        Image(name)
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width - 38)
            .border(.blue, width: 10)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkView()
    }
}
