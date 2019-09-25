//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Sam DuBois on 9/14/19.
//  Copyright © 2019 SamDuBois. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showFavoritesOnly = false
    
    var upcomingSessions: [Session] = []
    var pastSessions: [Session] = []
    
    var body: some View {
        NavigationView {
            List {
                
                // ##### Dont Show Until Later
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                // ######
                
                Section(header: Text("Upcoming Sessions")
                    .fontWeight(.bold)
                    .font(.headline))
                {
                    
                    ForEach(upcomingSessions) { session in
                        if !self.showFavoritesOnly || session.isFavorite {
                        MeetingCell(session: session)
                        }
                    }
                }
                
                Section(header: Text("Past Sessions")
                    .fontWeight(.bold)
                    .font(.headline))
                {
                    ForEach(pastSessions) { session in
                        if !self.showFavoritesOnly || session.isFavorite {
                        MeetingCell(session: session)
                        }
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
                
                HStack {
                    Text(session.presenter)
                    .font(.callout)
                    .foregroundColor(.secondary)
                    
                    if session.isFavorite {
                        Image(systemName: "star.fill")
                            .imageScale(.medium)
                            .foregroundColor(.yellow)
                    }
                }
                
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
