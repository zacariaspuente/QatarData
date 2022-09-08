//
//  Groups.swift
//  Qatar Complete
//
//  Created by Zacarias Puente on 07/09/2022.
//

import Foundation

struct Groups: Identifiable, Codable {
    struct TeamGroup: Codable {
        let name: String
        let id: Int
    }
    let id: Int
    let group: String
    let groupImg: String
    let teams: [TeamGroup]
}
