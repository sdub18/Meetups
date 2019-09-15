//
//  MeetingDetailView.swift
//  SwiftUITest
//
//  Created by Sam DuBois on 9/14/19.
//  Copyright © 2019 SamDuBois. All rights reserved.
//

import SwiftUI

struct MeetingDetailView: View {
    
    var session: Session
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text(session.description)
                .font(.body)
                .lineLimit(20)
                .padding(10)
            
            Spacer()
            
            HStack {
                Image("Display")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 300)
                .cornerRadius(40)
                
                Spacer()
            }
            
            Spacer()
                
            Text(session.date)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        
            HStack {
                    
                Image(session.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                
                Text(session.presenter)
                    .font(.title)
                    .padding()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .navigationBarTitle(Text(session.title))
    }
}

struct MeetingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingDetailView(session: testUpcomingEventsData[0])
    }
}
