//
//  ContactDetailView.swift
//  ContactListSUI
//
//  Created by albik on 01.12.2022.
//

import SwiftUI

struct ContactDetailView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }
            HStack {
                Image(systemName: "envelope")
                Text(person.email)
            }
            HStack {
                Image(systemName: "phone")
                Text(person.phone)
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPerson()[1])
    }
}
