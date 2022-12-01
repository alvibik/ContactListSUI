//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by albik on 01.12.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(persons, id: \.self) { person in
                    NavigationLink(destination: ContactDetailView(person: person)){
                        Text(person.fullName)
                    }
                }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPerson())
    }
}
