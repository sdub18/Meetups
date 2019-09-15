//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Sam DuBois on 9/14/19.
//  Copyright © 2019 SamDuBois. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var upcomingSessions: [Session] = []
    var pastSessions: [Session] = []
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    Text("Upcoming Sessions")
                        .fontWeight(.bold)
                        .font(.headline)
                }
                
                Section {
                    ForEach(upcomingSessions) { session in
                        MeetingCell(session: session)
                    }
                }
                
                Section {
                    Text("Past Sessions")
                        .fontWeight(.bold)
                        .font(.headline)
                }
                
                Section {
                    ForEach(pastSessions) { session in
                        MeetingCell(session: session)
                    }
                }
            }
            .navigationBarTitle(Text("Meetups"))
            .listStyle(GroupedListStyle())
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(upcomingSessions: testUpcomingEventsData, pastSessions: testPastEventsData)
    }
}
#endif

struct MeetingCell: View {
    
    let session: Session
    
    var body: some View {
        NavigationLink(destination: MeetingDetailView(session: session)) {
            
            Image(session.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(40)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(session.title)
                    .font(.headline)
                    
                    Spacer()
                    
                    Text(session.date)
                    .font(.callout)
                    .foregroundColor(.secondary)
                }
                
                Text(session.presenter)
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                Text(session.description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .frame(height: 60.0)
                    .padding(1)
            }
            .padding(5)
        }
    }
}
