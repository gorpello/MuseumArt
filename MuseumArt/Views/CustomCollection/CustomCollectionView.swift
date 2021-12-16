//
//  CustomCollectionView.swift
//  MuseumArt
//
//  Created by Gianluca Orpello for the Developer Academy on 16/12/21.
//
//


import SwiftUI

struct CustomCollectionView: View {
    var body: some View {
        NavigationView{
            Text("Hello, World!")
                .navigationTitle(Text("La Tua Collezione"))
        }
    }
}

struct CustomCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCollectionView()
    }
}
