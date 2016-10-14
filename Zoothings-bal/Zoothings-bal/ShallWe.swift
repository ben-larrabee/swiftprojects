//
//  Actionable.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/12/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

//Actionable Things
class ShallWe {

  func list() {
    io.writeMessage("+================== Listing of ZooThings ==================+")
    sleep(1)
    for thing in myZoo {
      thing.about()
    }
    io.writeMessage("+=================== End of Listing =======================+")
  }
  
  func move() {
    io.writeMessage("+=================== Move ZooThings =======================+")
    sleep(1)
    io.writeMessage("Here is where all the ZooThings are currently")
    for thing in myZoo {
      thing.locate()
    }
    var moving:Bool = true
    while moving {
      io.writeMessage("Which ZooThing shall we move?  Type it's ID.  Type 'quit' if you wish to quit")
      let activeID = io.getIntAmount()
      switch activeID {
      case -1:
        io.writeMessage("Ok, we'll exit from this.")
        sleep(1)
        moving = false
      case -2:
        io.writeMessage("Ok, let's see some options.")
        io.writeMessage("You should type the ID of an animal you wish to move.  Next you'll be asked to choose a new location for it.")
        io.writeMessage("You may quit this menu by typing 'quit'")
      default:
        var isTheIDValid:Bool = false
        for thing in myZoo {
          if thing.id == activeID {
            isTheIDValid = true
            io.writeMessage("The ID provided matched \(thing.type.rawValue) \(thing.id).")
            var choosing:Bool = true
            while choosing{
              choosing = false
              io.writeMessage("Where shall we move this ZooThing?  Press 1: ReptileZone, Press 2: BigCats, Press 3: Birds, Press 4: Primates, Press 5, OutOfZoo")
              let destination = io.getIntAmount()
              switch destination {
              case -1:
                io.writeMessage("Okay, we'll try again")
              case -2:
                io.writeMessage("There are four zoo areas, as well as 'out of zoo'.  Please choose an animal by ID, and then choose where to send it.")
              case 1:
                thing.move(to: .ReptileZone)
              case 2:
                thing.move(to: .BigCats)
              case 3:
                thing.move(to: .Birds)
              case 4:
                thing.move(to: .Primates)
              case 5:
                thing.move(to: .OutOfZoo)
              default:
                choosing = true
                io.writeMessage("That wasn't a valid input, please try again")
                sleep(1)
              }// close destination switch
            }
          }
        }
        if !isTheIDValid {
          io.writeMessage("This ID does not match any ZooThing in the zoo.")
        }
      } // end switch
    } // end of moving
  }// end move
  
  func unleashHell() {
    theZoo.shake()
    sleep(1)
  }
  
  func brag() {
    io.writeMessage("Ben Larrabee is an TEKY1 TA.  He is pretty interesting.  He's also old as dirt.")
    io.writeMessage("He was obviously motivated by Madagascar while coding this assignment")
    bragArt()
    sleep(1)
  }
  
  func update() {
    io.writeMessage("===================== UPDATE ZooThings =============")
    io.writeMessage("What would you like to do?  You can currently 'add' a ZooThing.")
    let resp = io.getInput()
    switch resp {
    case "add":
      add()
    case "edit":
      edit()
    default:
      io.writeMessage("I don't know how to do that at this time, so I'm sending you back to the menu")
    }
    sleep(1)
  }
  func edit() {
    io.writeMessage("+=================== Edit a ZooThing =================+")
    io.newLine()
    io.writeMessage("Shall we edit one of the ZooThings?")
    io.writeMessage("Here are the current ZooThings.")
    for thing in myZoo {
      thing.about()
    }
    var editing:Bool = true
    while editing {
      io.writeMessage("Which ZooThing shall we edit?  Type it's ID.  Type 'quit' if you wish to quit")
      let activeID = io.getIntAmount()
      switch activeID {
      case -1:
        io.writeMessage("Ok, we'll exit from this.")
        sleep(1)
        editing = false
      case -2:
        io.writeMessage("Ok, let's see some options.")
        io.writeMessage("You should type the ID of an animal you wish to edit.  You'll be asked to choose a new short description for it.")
        io.writeMessage("You may quit this menu by typing 'quit'")
      default:
        var isTheIDValid:Bool = false
        for thing in myZoo {
          if thing.id == activeID {
            isTheIDValid = true
            io.writeMessage("The ID provided matched \(thing.type.rawValue) \(thing.id).")
            io.writeMessage("Pleae provide a new description")
            thing.short = io.getInput()
          }
        }
      }
    }
  }
  
  func add() {
    io.writeMessage("+==================== Add a ZooThing =================+")
    io.newLine()
    io.writeMessage("So, shall we add a ZooThing?")
    io.writeMessage("Choose a number to add a new 1: Employee, 2: Customer, 3: Lion, 4: Hippo, 5: Giraffe")
    io.writeMessage("You may also choose to get 'help' or 'quit'")
    let newThing = io.getIntAmount()
    switch newThing {
    case -1:
      io.writeMessage("Okay, we'll quit")
      break
    case -2:
      io.writeMessage("You will be prompted through this routine to add an animal by providing key details")
    case 1:
      //adding an Employee
      io.writeMessage("Please tell me the employee's name.")
      let newName = io.getInput()
      io.writeMessage("Please tell me the employee's job description")
      let newJob = io.getInput()
      io.writeMessage("Please write a short sentence describing the employee.")
      let newShort = io.getInput()
      nextID += 1
      //build it
      let newEmployee = Employee(id: nextID, location: .OutOfZoo, short: newShort, name: newName, job: newJob)
      newEmployee.about()
      myZoo.append(newEmployee)
    case 2:
      //adding a Customer
      io.writeMessage("Please tell me the customer's name.")
      let newName = io.getInput()
      io.writeMessage("Please write a short sentence describing the customer.")
      let newShort = io.getInput()
      nextID += 1
      //build it
      let newCustomer = Customer(id: nextID, location: .OutOfZoo, short: newShort, name: newName, fav: .Lion)
      newCustomer.about()
      myZoo.append(newCustomer)
    case 3:
      //adding a Lion
      io.writeMessage("Please write a short sentence describing this lion.")
      let newShort = io.getInput()
      nextID += 1
      let newLion = Lion(id: nextID, location: .BigCats, type: .Lion, short: newShort, noiseMade: "roar", locomotion: "run")
      newLion.about()
      myZoo.append(newLion)
    case 4:
    //adding a Hippo
      nextID += 1
      io.writeMessage("Please write a short sentence describing this hippopotomus.")
      let newShort = io.getInput()
      let newHippo = Hippo(id: nextID, location: .Primates, type: .Hippo, short: newShort, noiseMade: "grunt", locomotion: "plod")
      newHippo.about()
      myZoo.append(newHippo)
    case 5:
    //adding a Giraffe
      nextID += 1
      io.writeMessage("Please write a short sentence describing this giraffe.")
      let newShort = io.getInput()
      let newGiraffe = Giraffe(id: nextID, location: .OutOfZoo, type: .Giraffe, short: newShort, noiseMade: "hmmm", locomotion: "stride")
      newGiraffe.about()
      myZoo.append(newGiraffe)
    default:
      io.writeMessage("I'm sorry, your response wasn't recognized.  Exiting.")
    }
  }
  func bragArt() {
    print("▄▄▄▄· ▄▄▄ . ▐ ▄     ▄▄▌   ▄▄▄· ▄▄▄  ▄▄▄   ▄▄▄· ▄▄▄▄· ▄▄▄ .▄▄▄ .")
    print("▐█ ▀█▪▀▄.▀·•█▌▐█    ██•  ▐█ ▀█ ▀▄ █·▀▄ █·▐█ ▀█ ▐█ ▀█▪▀▄.▀·▀▄.▀·")
    print("▐█▀▀█▄▐▀▀▪▄▐█▐▐▌    ██▪  ▄█▀▀█ ▐▀▀▄ ▐▀▀▄ ▄█▀▀█ ▐█▀▀█▄▐▀▀▪▄▐▀▀▪▄")
    print("██▄▪▐█▐█▄▄▌██▐█▌    ▐█▌▐▌▐█ ▪▐▌▐█•█▌▐█•█▌▐█ ▪▐▌██▄▪▐█▐█▄▄▌▐█▄▄▌")
    print("·▀▀▀▀  ▀▀▀ ▀▀ █▪    .▀▀▀  ▀  ▀ .▀  ▀.▀  ▀ ▀  ▀ ·▀▀▀▀  ▀▀▀  ▀▀▀")
    io.newLine(x: 2)
  }
}
