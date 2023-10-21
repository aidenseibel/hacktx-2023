//
//  ResearchGroup.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import Foundation

// e.g. The Beaudoin Rat Lab
struct ResearchGroup: Identifiable, Hashable, Equatable {
    static func == (lhs: ResearchGroup, rhs: ResearchGroup) -> Bool {
        return lhs.id == rhs.id
    }

    var id = UUID()
    
    var name, description: String
    var university: University
    var department: Department
    var headParticipants: [User]
    var participants: [User]
    var followers: [User]
    
    var foundedDate: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
