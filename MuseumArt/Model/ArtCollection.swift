//
//  ArtCollection.swift
//  MuseumArt
//
//  Created by Gianluca Orpello and Pasquale Vittoriosi for the Developer Academy on 16/12/21.
//
//


import Foundation

//The ArtCollection object feed our interface
struct ArtCollection: Identifiable {
    
    // The id is used to create the list, allows us to uniquely identify the object
    let id = UUID()
    
    // All the propery of an ArtCollection.
    // Useful properties to be able to model ("describe") our ArtCollection object
    let name: String
    let imageName: String
    let urlPage: String
    let description: String
}
