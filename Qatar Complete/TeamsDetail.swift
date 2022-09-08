//
//  TeamsDetail.swift
//  Qatar Complete
//
//  Created by Zacarias Puente on 07/09/2022.
//
//
//import SwiftUI
//
//struct TeamsDetail: View {
//
//    let group: Groups
//    struct Teams: Codable {
//        let position: String
//        let player: Team
//    }
//
//    let teams: [Teams]
//    var body: some View {
//        GeometryReader { geometry in
//            ScrollView {
//                VStack {
//                    Image(group.groupImg)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(maxHeight: geometry.size.height * 0.3)
//
//                    Rectangle()
//                        .frame(height: 1)
//                        .foregroundColor(.secondary)
//                        .padding(.horizontal)
//                        .padding(.bottom, 20)
//                    VStack(alignment: .leading) {
//                        Text("\(group.group) Highlights")
//                            .font(.title)
//
//                        Text(team.description)
//
//                        Rectangle()
//                            .foregroundColor(.secondary)
//                            .frame(height: 1, alignment: .center)
//                            .padding(.horizontal)
//                            .padding(.bottom, 20)
//                        Text("Players")
//                            .font(.title)
//                    }
//
//                }
//                ScrollView(.horizontal){
//                    HStack {
//                        ForEach(teamMembers, id:\.position) { jugador in
//                            NavigationLink {
//                                Text("Jugador detail")
//                            }label: {
//                                HStack {
//                                    Image(jugador.player.id)
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 120, height: 70, alignment: .center)
//                                        .clipShape(RoundedRectangle(cornerRadius: 20))
//
//                                    VStack {
//                                        Text(jugador.player.name)
//                                            .font(.headline)
//
//                                        Text(jugador.position)
//                                            .font(.body)
//                                    }
////                                }
////                            }
////                        }
////                    }
////                }
//            }
//        }
//    }
//}
//
//struct TeamDetail_Previews: PreviewProvider {
//    static let team: Team = Bundle.main.decode("allTeams.json")
//    static let players: [String: Players] = Bundle.main.decode("players.json")
//    static var previews: some View {
//        TeamsDetail(
//    }
//}
