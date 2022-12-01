//
//  ContentView.swift
//  ContactListSUI
//
//  Created by albik on 01.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.crop.rectangle.stack")
                    Text("Contacts")
                }
            ContactSectionView(persons: persons)
                .tabItem {
                    Image(systemName: "person.crop.square.filled.and.at.rectangle")
                    Text("Contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
