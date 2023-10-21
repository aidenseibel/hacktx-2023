//
//  User.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import Foundation

// e.g. Aiden Seibel
struct User: Identifiable, Hashable, Equatable{
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    
    var username, email, bio: String
    var dateJoined: Date
    var university: University
    var favoriteResearchGroups: [ResearchGroup]
    var participatingResearchGroups: [ResearchGroup]
    var cards: [Card]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
