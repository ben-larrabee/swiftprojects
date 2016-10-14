//
//  librarycontent.swift
//  library-app
//
//  Created by Ben Larrabee on 10/11/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

var collection : Array = [Content]()

class Content {
  var checked: Bool = false
  var dueDate: Date = Date()
  var lastCheckIn: Date = Date()
  var id : Int = 101001
  var keywords = [String]()
  var name : String = "'This Book'"
  var status : String = "available"
  
  init(checked: Bool = false, dueDate: Date = Date(timeIntervalSinceNow: 14*24*60*60), lastCheckIn: Date = Date(), id: Int = 101001, keywords: [String] = [], name: String = "some name") {
    self.checked = checked
    self.dueDate = dueDate
    self.lastCheckIn = lastCheckIn
    self.id = id
    self.keywords = keywords
    self.name = name
    self.status = checked ? "checked out" : "available"
  }
  
  func checkout() {
    if self.checked {
      print("Book is already checked out")
    } else {
      self.checked = true
      self.status = "checked out"
      self.dueDate = Date(timeIntervalSinceNow: 14*24*60*60)  // + 2 weeks
      let dDComps = userCalendar.dateComponents([.year, .month, .day],
                                                  from: self.dueDate)
      print("\(self.name) is now checked out and will be due on \(dDComps.month!)/\(dDComps.day!)/\(dDComps.year!).")
      sleep(1)
    
    }
  }
  func checkin(today : Date = Date() ) {
    if !self.checked {
      print("Book wasn't property checked out!")
    } else {
      self.checked = false
      self.lastCheckIn = today
      io.writeMessage("\(self.name) was checked in successfully")
      sleep(1)
    }
  }
  func selfIdentify() {
    if self.checked {
      self.status = "checked out"
    } else {
      self.status = "avaialable"
    }
    print("Book: \(self.name), ID: \(self.id) is \(self.status). keywords: ")
    print(keywords, separator: ", ", terminator: "\n")
  }
  func fullDetails() {
    print("\(self.name), ID: \(self.id) is \(self.status).")
    if self.checked {
      let dDComps = userCalendar.dateComponents([.year, .month, .day],
                                                          from: self.dueDate)
      print("It is due by \(dDComps.month!)/\(dDComps.day!)/\(dDComps.year!).")
    } else {
      let lCIComps = userCalendar.dateComponents([.year, .month, .day],
                                                 from: self.lastCheckIn)
      print("it was returned to collections on \(lCIComps.month!)/\(lCIComps.day!)/\(lCIComps.year!).")
    }
    sleep(1)
  }
}
