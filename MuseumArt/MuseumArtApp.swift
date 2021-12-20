//
//  MuseumArtApp.swift
//  MuseumArt
//
//  Created by Gianluca Orpello and Pasquale Vittoriosi for the Developer Academy on 16/12/21.
//
//


import SwiftUI

@main
struct MuseumArtApp: App {
    var body: some Scene {
        WindowGroup {
            
            // This application consists of a TabBar, where three different views are presented within it.
            
            TabView{
                
                CollectionsView()
                    .tabItem {
                        Label(
                            "Collezioni",
                            systemImage: "list.bullet.below.rectangle"
                        )
                    }
                
                ArtworkView()
                    .tabItem {
                        Label(
                            "Opere",
                            systemImage: "person.crop.artframe"
                        )
                    }
                
                CustomCollectionView()
                    .tabItem {
                        Label(
                            "Collezione Privata",
                            systemImage: "person.crop.circle"
                        )
                    }
                
            }
        }
    }
}
