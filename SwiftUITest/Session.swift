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
    
    var imageName: String { return title }
    var thumbnailName: String { return title + "Thumb" }
}

#if DEBUG
let testUpcomingEventsData = [
    Session(title: "Codable", presenter: "Sam Schmidt", date: "10-5-19", description: "Codable is a dynamic and useful API built by Apple to easily fetch and post data from online. In this session I demonstrate best practices with Codable and how to get is started in your app."),
    Session(title: "Programing UI vs. Storyboard", presenter: "Sam DuBois", date: "10-12-19", description: "As a programmer often it can be difficult to weigh the benefits of coding a UI or using Storyboards to do it visually. In this presentation, I will explain the pros and cons of both and when to choose one over the other."),
    Session(title: "Creating an App From Scratch", presenter: "Jeremy Kelleher", date: "10-17-19", description: "Ever want to know how to create an app from complete scratch? In this lecture I will show you how to properly plan an application out, how to begin your application, and where to go to seek help when you enevitably run into problems."),
    Session(title: "TableView and CollectionViews", presenter: "Joshua Holme", date: "10-24-19", description: "Table Views and Collections views can often be tricky for a new and up-and-coming developer. In this session, I will show you best practices for creating these views when you need them and how to get the bets out of your creations")
]

let testPastEventsData = [
    Session(title: "Codable", presenter: "Sam Schmidt", date: "10-5-19", description: "Codable is a dynamic and useful API built by Apple to easily fetch and post data from online. In this session I demonstrate best practices with Codable and how to get is started in your app."),
    Session(title: "Programing UI vs. Storyboard", presenter: "Sam DuBois", date: "10-12-19", description: "As a programmer often it can be difficult to weigh the benefits of coding a UI or using Storyboards to do it visually. In this presentation, I will explain the pros and cons of both and when to choose one over the other."),
    Session(title: "Creating an App From Scratch", presenter: "Jeremy Kelleher", date: "10-17-19", description: "Ever want to know how to create an app from complete scratch? In this lecture I will show you how to properly plan an application out, how to begin your application, and where to go to seek help when you enevitably run into problems."),
    Session(title: "TableView and CollectionViews", presenter: "Joshua Holme", date: "10-24-19", description: "Table Views and Collections views can often be tricky for a new and up-and-coming developer. In this session, I will show you best practices for creating these views when you need them and how to get the bets out of your creations")
]

#endif