//
//  CollectionsView.swift
//  MuseumArt
//
//  Created by Gianluca Orpello for the Developer Academy on 16/12/21.
//
//


import SwiftUI

struct CollectionsView: View {
    
    let artCollections = [
        ArtCollection(
            name: "Collezione Farnese",
            imageName: "CollezioneFarnese",
            urlPage: "https://capodimonte.cultura.gov.it/collezione/collezione-farnese/",
            description: "Trasferita a Napoli da Carlo di Borbone, figlio di Elisabetta ultima discendente dei Farnese, la collezione costituisce il nucleo fondante del Museo di Capodimonte, di cui occupa l’ala orientale del piano nobile del palazzo voluto dal sovrano nel 1738, anche con l’intenzione di dare collocazione adeguata al ricco patrimonio ereditato."),
        ArtCollection(
            name: "Collezione d'Avalos",
            imageName: "CollezioneAvalos",
            urlPage: "https://capodimonte.cultura.gov.it/collezione/collezione-d-avalos/",
            description: "Nel 1862 Alfonso d’Avalos, l’ultimo esponente del ramo di Vasto, Pescara, Francavilla, Troia e  Montesarchio, lascia in legato la sua raccolta alla Pinacoteca Nazionale di Napoli. La donazione, contestata dagli eredi, è oggetto di una lite giudiziaria che si conclude solo nel 1882 con il trasferimento delle opere al Museo Borbonico."),
        ArtCollection(
            name: "Collezione De Ciccio",
            imageName: "CollezioneDeCiccio",
            urlPage: "https://capodimonte.cultura.gov.it/collezione/collezione-de-ciccio/",
            description: "La collezione, donata da Mario De Ciccio allo Stato italiano nel 1958 è costituita da 1.300 pezzi, soprattutto oggetti d’arte applicata di differenti epoche e tipologia, raccolti dal collezionista nell’arco di oltre 50 anni prima a Palermo, sua città natale, poi a Napoli, sua patria d’adozione dal 1906, ed anche sui più quotati mercati d’arte internazionale."),
        ArtCollection(
            name: "Manifesti Mele",
            imageName: "ManifestiMele",
            urlPage: "https://capodimonte.cultura.gov.it/collezione/manifesti-mele/",
            description: "La collezione è stata donata al Museo di Capodimonte dagli eredi di Emiddio e Alfonso Mele fondatori de “I Grandi Magazzini Italiani”, inaugurati nel 1889 in via San Carlo a Napoli e attivi, a livello internazionale, nei settori della moda e del lusso, fino alla chiusura del 1932."),
    ]
    
    var body: some View {
        NavigationView{
            
            List {
                
                Image("capodimonte")
                    .resizable()
                    .aspectRatio(3/2, contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width - 38)
                    .padding(.bottom)
                
                ForEach(artCollections) { collection in
                    NavigationLink(collection.name) {
                        CollectionDetailView(artCollection: collection)
                    }
                }
                
            }
            .listStyle(.plain)
            .navigationTitle(Text("Museum Art"))
        }
    }
    
}

struct CollectionsView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsView()
    }
}
