//
//  Meeting.swift
//  SwiftUITest
//
//  Created by Sam DuBois on 9/14/19.
//  Copyright © 2019 SamDuBois. All rights reserved.
//

import SwiftUI

struct Session: Identifiable {
    var id = UUID()
    var title: String
    var presenter: String
    var date: String
    var description: String
    var isFavorite: Bool
    
    var imageName: String { return presenter }
    var thumbnail: String { return presenter + "Thumb" }
}

#if DEBUG
let testUpcomingEventsData = [
    Session(title: "Codable", presenter: "Aaron Schuman", date: "10-5-19", description: "Codable is a dynamic and useful API built by Apple to easily fetch and post data from online. In this session I demonstrate best practices with Codable and how to get is started in your app.", isFavorite: false),
    Session(title: "Storyboard or Code?", presenter: "Sam DuBois", date: "10-12-19", description: "As a programmer often it can be difficult to weigh the benefits of coding a UI or using Storyboards to do it visually. In this presentation, I will explain the pros and cons of both and when to choose one over the other.", isFavorite: true),
    Session(title: "Let's Make an App", presenter: "Jeremy Kelleher", date: "10-17-19", description: "Ever want to know how to create an app from complete scratch? In this lecture I will show you how to properly plan an application out, how to begin your application, and where to go to seek help when you enevitably run into problems.", isFavorite: false),
    Session(title: "How to TableView", presenter: "Joshua Holme", date: "10-24-19", description: "Table Views and Collections views can often be tricky for a new and up-and-coming developer. In this session, I will show you best practices for creating these views when you need them and how to get the bets out of your creations", isFavorite: true)
]

let testPastEventsData = [
    Session(title: "Codable", presenter: "Aaron Schuman", date: "10-5-19", description: "Codable is a dynamic and useful API built by Apple to easily fetch and post data from online. In this session I demonstrate best practices with Codable and how to get is started in your app.", isFavorite: false),
    Session(title: "Storyboard or Code?", presenter: "Sam DuBois", date: "10-12-19", description: "As a programmer often it can be difficult to weigh the benefits of coding a UI or using Storyboards to do it visually. In this presentation, I will explain the pros and cons of both and when to choose one over the other.", isFavorite: true),
    Session(title: "Creating an App From Scratch", presenter: "Jeremy Kelleher", date: "10-17-19", description: "Ever want to know how to create an app from complete scratch? In this lecture I will show you how to properly plan an application out, how to begin your application, and where to go to seek help when you enevitably run into problems.", isFavorite: true),
    Session(title: "TableView and CollectionViews", presenter: "Joshua Holme", date: "10-24-19", description: "Table Views and Collections views can often be tricky for a new and up-and-coming developer. In this session, I will show you best practices for creating these views when you need them and how to get the bets out of your creations", isFavorite: false)
]

#endif
