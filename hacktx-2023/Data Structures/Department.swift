//
//  Department.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import Foundation

// e.g. Chemistry
struct Department: Identifiable, Hashable, Equatable {
    static func == (lhs: Department, rhs: Department) -> Bool {
        return lhs.id == rhs.id
    }

    var id = UUID()
    
    var name, description: String
    var university: University
    var departments: [Department]
    var researchGroups: [ResearchGroup]
    var followers: [User]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
