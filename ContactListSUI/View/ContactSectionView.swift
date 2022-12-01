//
//  ContactSectionView.swift
//  ContactListSUI
//
//  Created by albik on 01.12.2022.
//

import SwiftUI

struct ContactSectionView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(persons, id: \.self) { person in
                    Section(person.fullName) {
                        HStack{
                            Image(systemName: "phone")
                            Text(person.phone)
                        }
                        HStack{
                            Image(systemName: "envelope")
                            Text(person.email)
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}


struct ContactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(persons: Person.getPerson())
    }
}
