//
//  interactive.swift
//  library-app
//
//  Created by Ben Larrabee on 10/11/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//
//class Content {
//  pvarate var checked: Bool = false
//  private var dueDate: Date = Date()
//  private var lastCheckIn: Date = Date()
//  private var id : Int = 101001
//  private var keywords = [String]()
//  private var name : String = "'This Book'"
//  private var status : String = "available"

import Foundation

class LetUs {
  func add(){
    io.writeMessage("What is the name of this book?")
    let newName = io.getInput()
    var k = [String]()
    var adding:Bool = true
    while adding {
      io.writeMessage("Does this book have any (more) relevant keywords?  'y' for Yes, 'n' for No")
      let resp = io.getInput()
      switch resp {
      case "y":
        io.writeMessage("Tell me a keyword for this")
        let newKey = io.getInput()
        k.append(newKey)
      case "n":
        adding = false
        io.writeMessage("okay, we won't add (anymore) keywords")
      default:
        io.writeMessage("I'm sorry, I didn't get that, please try again.  y/n only.")
      }
    }
    //determine next available id
    var maxVal = collection[0].id
    for book in collection {
      if maxVal < book.id {
        maxVal = book.id
      }
    }
    let next = maxVal + 1
    
    collection.append( Content(checked: false, dueDate: Date(timeIntervalSinceNow: 14*24*60*60), lastCheckIn: Date(), id: next, keywords: k, name: newName))
    io.writeMessage("\(newName) was successfully added to the library as ID: \(next)")
    myMenu.display()
  }
  
  func checkStatus() {
    io.writeMessage("For which book would you like to see status details?")
    let key = io.getIntAmount()
    //call that books details method
    for book in collection {
      if book.id == key {
        book.fullDetails()
      }
    }
  }
  
  func list() {
    //sort the books alphabetically
    collection.sort { $0.name < $1.name }
    io.writeMessage("Do you want a : 'f' full list, 'a' available list, or 'c' checked out list?")
    let resp = io.getInput()
    switch resp {
    case "f":
      for book in collection {
        book.selfIdentify()
        io.newLine()
      }
    case "a":
      for book in collection {
        if book.checked == false {
          book.selfIdentify()
          io.newLine()
        }
      }
    case "c":
      for book in collection {
        if book.checked == true {
          book.selfIdentify()
          io.newLine()
        }
      }
    default:
      io.writeMessage("I didn't get that")
      list()
    }
  }

  func checkOut() {
    //find out which book to check out
    io.writeMessage("Which book will you be checking out?")
    let key = io.getIntAmount()
    //call that book's checkout method
    for book in collection {
      if book.id == key {
        book.checkout()
      }
    }
  }

  func checkIn(){
    //find out which book to check in
    io.writeMessage("Which book will you be checking in?")
    let key = io.getIntAmount()
    //call that book's checkin method
    for book in collection {
      if book.id == key {
        book.checkin()
      }
    }
  }
  
}

/*-------------------------------------------------------
 Home screen.  Directs to Menu, Help, or Quit
 */
class Interactive {
  public var done: Bool = false
  private var currentInput: String = "q"

  
  
  func go() {
    showoff()
    while !done {
      io.writeMessage("press 'm' to access the Menu, press 'h' to get Help, or press 'q' to Quit")
      currentInput = io.getInput()
      switch currentInput {
      case "m":
        myMenu.display()
      case "h":
        helpWith.theApp()
      case "q":
        io.writeMessage("I guess you're leaving...")
        sleep(1)
        done = true
        break
      default:
        io.writeMessage("I'm afraid I don't understand \(currentInput).")
        sleep(1)
      }
    }
  }
  
  func showoff() {
    print("  ____  _     ______||_____")
    print(" / _/\\| \\|   | an app by  |")
    print("< <_ || ||   |Ben Larrabee|")
    print(" \\_ \\||_||_   ------||----|")
    print("___> >_ \\_ \\        ||    ")
    print("\\___/||\\||\\|()()()  ||")
    sleep(2)
    print("|\n|\n| This program will allow you to check books out of a library, or check them back in.")
  }
  
}
