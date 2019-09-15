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
    
    var body: some View {
        NavigationView {
            List(upcomingSessions) { session in
                
                NavigationLink(destination: MeetingDetailView()) {
                
                    Image(session.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .cornerRadius(40)
                    
                    VStack(alignment: .leading) {
                        Text(session.title)
                            .font(.headline)
                        
                        HStack {
                            Text(session.presenter)
                                .font(.callout)
                                .foregroundColor(.secondary)
                            
                            Text(session.date)
                                .font(.callout)
                                .foregroundColor(.secondary)
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
            .navigationBarTitle(Text("Meetups"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(upcomingSessions: testUpcomingEventsData)
    }
}
#endif
