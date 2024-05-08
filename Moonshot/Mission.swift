//
//  MissionView.swift
//  Moonshot
//
//  Created by Leo Torres Neyra on 10/1/24.
//

import Foundation

struct Mission: Hashable, Codable, Identifiable, Equatable {
    static func == (lhs: Mission, rhs: Mission) -> Bool {
        return lhs.id == rhs.id
        && lhs.formattedLaunchDate == rhs.formattedLaunchDate
        && lhs.crew == rhs.crew
        && lhs.description == rhs.description
    }
    
    struct CrewRole: Hashable, Codable, Equatable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String

    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }

    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
