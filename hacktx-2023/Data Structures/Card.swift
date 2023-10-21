//
//  Card.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import Foundation

// e.g. an update in the Beaudoin Rat Lab
struct Card: Identifiable, Hashable, Equatable {
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }

    var id = UUID()
    
    var university: University
    var department: Department
    var researchGroup: ResearchGroup
    var user: User
    var datePosted: Date
    
    var title, description, imageURL: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
