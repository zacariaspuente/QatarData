//
//  ContentView.swift
//  Qatar Complete
//
//  Created by Zacarias Puente on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    let groups: [Groups] = Bundle.main.decode("groups.json")
    let team: [String: Team] = Bundle.main.decode("allTeams.json")
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(groups){ group in
                        NavigationLink {
                            TeamView(group: group, teamsArray: team)
                        }label: {
                            Image(group.groupImg)
                                .resizable()
                                .frame(width: 150, height: 150, alignment: .center)
                        }
                    }
                }
            }
            .navigationTitle("Qatar Complete")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
