//
//  menus.swift
//  library-app
//
//  Created by Ben Larrabee on 10/11/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//
var currentResponse : String = ""
let helpWith = Helper()

import Foundation
// access by myMenu
class Menu {
  
  func display() {
    io.newLine()
    io.writeMessage("=========== MAIN MENU =================")
    io.writeMessage("'quit' allows you to quit the program")
    io.writeMessage("'help' allows you to get help topics")
    io.writeMessage("'list' allows you to get a list of books")
    io.writeMessage("'add' allows you to create a new book")
    io.writeMessage("'status' allows you to see the availability status of a book")
    io.writeMessage("'checkout' allows you to check a book out of the library")
    io.writeMessage("'checkin' allows you to check a book into the library")
    currentResponse = io.getInput()
    switch currentResponse {
    case "quit":
      io.writeMessage("You are leaving Shh...")
      interactive.done = true
      break
    case "help":
      helpWith.theMenu()
    case "list":
      shallWe.list()
    case "add":
      shallWe.add()
    case "status":
      shallWe.checkStatus()
    case "checkout":
      shallWe.checkOut()
    case "checkin":
      shallWe.checkIn()
    default:
      io.writeMessage("I don't know what you meant to do.  Please try again")
      sleep(1)
      myMenu.display()
    }
  }
  
}
