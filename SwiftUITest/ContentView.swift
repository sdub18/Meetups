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
                Image(systemName: "photo")
            
                VStack(alignment: .leading) {
                    HStack {
                        Text(session.title)
                            .font(.headline)
                        Text(session.date)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    Text(session.description)
                        .font(.callout)
                        .foregroundColor(.secondary)
                        .frame(height: 60.0)
                }
            .padding(5)
            }
        }
    .navigationBarTitle("Dad")
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(upcomingSessions: testUpcomingEventsData)
    }
}
#endif
