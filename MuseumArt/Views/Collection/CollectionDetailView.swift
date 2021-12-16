//
//  CollectionDetailView.swift
//  MuseumArt
//
//  Created by Gianluca Orpello for the Developer Academy on 16/12/21.
//
//


import SwiftUI

struct CollectionDetailView: View {
    
    var artCollection: ArtCollection
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        VStack{
            
            ScrollView{
                Image(artCollection.imageName)
                    .resizable()
                    .aspectRatio(3/2, contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width - 38)
                    .padding(.bottom)
                
                    .navigationTitle(artCollection.name)
                
                Text(artCollection.description)
                    .padding()
                
            }
            
            
            Button(action: openWebpage) {
                Label("Visita la Collezione", systemImage: "safari")
                    .font(.headline)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 50)
            }
            .buttonStyle(.borderedProminent)
            .cornerRadius(12)
            .padding(.bottom)
        }
        
        .navigationTitle(artCollection.name)
        
    }
    
    func openWebpage() {
        openURL(URL(string: artCollection.urlPage)!)
    }
}


struct CollectionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let artCollection = ArtCollection(
            name: "Collezione Farnese",
            imageName: "CollezioneFarnese",
            urlPage: "https://capodimonte.cultura.gov.it/collezione/collezione-farnese/",
            description: "Trasferita a Napoli da Carlo di Borbone, figlio di Elisabetta ultima discendente dei Farnese, la collezione costituisce il nucleo fondante del Museo di Capodimonte, di cui occupa l’ala orientale del piano nobile del palazzo voluto dal sovrano nel 1738, anche con l’intenzione di dare collocazione adeguata al ricco patrimonio ereditato.")
        
        CollectionDetailView(artCollection: artCollection)
    }
}
