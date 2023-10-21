//
//  SampleData.swift
//  hacktx-2023
//
//  Created by Aiden Seibel on 10/21/23.
//

import Foundation

var sampleUniversities: [University] = [
    University(name: "Texas Tech University", description: "A leading research institution in Lubbock, Texas", departments: [sampleDepartments[0]], researchGroups: [sampleResearchGroups[0]], cards: [sampleCards[0]], followers: [sampleUsers[0]])
]

var sampleDepartments: [Department] = [
    Department(name: "Chemistry", university: sampleUniversities[0], researchGroups: [sampleResearchGroups[0]], followers: [sampleUsers[0]])
]

var sampleResearchGroups: [ResearchGroup] = [
    ResearchGroup(name: "Beaudoin Rat Lab", description: "Researching the effects of cocaine on rats.", university: sampleUniversities[0], department: sampleDepartments[0], headParticipants: [sampleUsers[0]], participants: [sampleUsers[0]], followers: [sampleUsers[0]], foundedDate: Date())
]

var sampleUsers: [User] = [
    User(username: "aseibel1", email: "aseibel@trinity.edu", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacinia metus nec purus gravida, a eleifend massa facilisis. Sed nec nunc ac justo rhoncus euismod. Sed nec sapien id massa rhoncus auctor id eget mauris", dateJoined: Date(), university: sampleUniversities[0], favoriteResearchGroups: [sampleResearchGroups[0]], participatingResearchGroups: [sampleResearchGroups[0]], cards: [sampleCards[0]])
]

var sampleCards: [Card] = [
    Card(university: sampleUniversities[0], department: sampleDepartments[0], researchGroup: sampleResearchGroups[0], user: sampleUsers[0], datePosted: Date(), title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lacinia metus nec purus gravida, a eleifend massa facilisis. Sed nec nunc ac justo rhoncus euismod. Sed nec sapien id massa rhoncus auctor id eget mauris", imageURL: "example")
]
