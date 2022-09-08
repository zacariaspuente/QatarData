//
//  TeamView.swift
//  Qatar Complete
//
//  Created by Zacarias Puente on 07/09/2022.
//

import SwiftUI

struct TeamView: View {
    
    struct GroupTeam: Codable {
        let team: Team
        let id: Int
    }
    let teamsArray: [GroupTeam]
    let group: Groups
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(teamsArray, id: \.id) { team in
                    NavigationLink{
                        Text("TEAM DETAIL")
                    }label: {
                        VStack {
                            Image(team.team.teamImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150, alignment: .center)
                            
                            Text(team.team.teamName)
                                .font(.headline)
                        }

                    }

                }
            }
        }
    }
    init(group: Groups, teamsArray: [String: Team]) {
        self.group = group
        self.teamsArray = group.teams.map { team in
            if let teamMember = teamsArray[team.name] {
                return GroupTeam(team: teamMember, id: team.id)
            }else {
                fatalError("Missing\(team.name)")
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static let group: [Groups] = Bundle.main.decode("groups.json")
    static let footballTeams: [String: Team] = Bundle.main.decode("allTeams.json")
    static var previews: some View {
        TeamView(group: group[0], teamsArray: footballTeams)
    }
}
