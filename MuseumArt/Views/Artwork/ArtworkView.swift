//
//  ArtworkView.swift
//  MuseumArt
//
//  Created by Gianluca Orpello and Pasquale Vittoriosi for the Developer Academy on 16/12/21.
//
//


import SwiftUI

struct ArtworkView: View {
        
    var body: some View {
        NavigationView{
            
            // Example of how to create a View with pagination, also called "PageControl"
            
            TabView {
                
                // Using the power of SwiftUI, you don't need to copy and paste the same code over and over to create similar objects.
                // In this case all the images will have similar properties, so the code that creates them has been extracted into a function described later.
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
    
    // There are several approaches to code reuse.
    // In this case since I have to create a simple object,
    // it is not strictly necessary to create a separate View object,
    // so this function returns me a View based on the information passed to it.
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
