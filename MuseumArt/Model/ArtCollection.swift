//
//  ArtCollection.swift
//  MuseumArt
//
//  Created by Gianluca Orpello for the Developer Academy on 16/12/21.
//
//


import Foundation

struct ArtCollection: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlPage: String
    let description: String
}
