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
            
            ScrollView {
                
                Image("Gianluca")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 8)
                            .foregroundColor(.yellow)
                    )
                    .shadow(radius: 10)
                    .padding()
                
                // Name and Surname (Title)
                Text("Gianluca The Bug Maker")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    .padding(.bottom)
                
                // Description (Body)
                Text("I create bugs in the code I implement, even if the project sometimes works...")
            }
            
            .padding()
            .navigationTitle(Text("La Tua Collezione"))
        }
        
    }
}

struct CustomCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCollectionView()
    }
}
