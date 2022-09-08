//
//  Team.swift
//  Qatar Complete
//
//  Created by Zacarias Puente on 07/09/2022.
//

import Foundation

struct Team: Codable, Identifiable {
    struct TeamMembers: Codable {
        let name: String
        let position: String
    }
    let id: Int
    let teamName: String
    let teamImage: String
    let teamMembers: [TeamMembers]
    let description: String
}
