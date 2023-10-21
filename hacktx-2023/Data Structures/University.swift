//
//  University.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import Foundation

// e.g. Trinity University
struct University: Identifiable, Hashable, Equatable {
    static func == (lhs: University, rhs: University) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    
    var name, description: String
    var departments: [Department]
    var researchGroups: [ResearchGroup]
    var cards: [Card]
    var followers: [User]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
