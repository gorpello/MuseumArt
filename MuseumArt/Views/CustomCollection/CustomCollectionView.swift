//
//  CustomCollectionView.swift
//  MuseumArt
//
//  Created by Gianluca Orpello and Pasquale Vittoriosi for the Developer Academy on 16/12/21.
//
//


import SwiftUI

struct CustomCollectionView: View {
    
    // On this page you can find an example of Present Me,
    // similar to a resume page. Feel free to explore and edit
    // this page as you see fit.
    // Try to create the best Present Me View ever!
    
    var body: some View {
        
        NavigationView{
            
            ScrollView {
                
                // Profile Image
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
                Group {
                    Text("Gianluca ")
                        .fontWeight(.bold)
                    Text("The Bug Maker")
                        .fontWeight(.bold)
                }
                .font(.title)
                .foregroundColor(Color.pink)
                
                
                // Description (Body)
                Text("I create bugs in the code I implement, even if the project sometimes works...")
                    .font(.headline)
                    .padding(.top)
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
