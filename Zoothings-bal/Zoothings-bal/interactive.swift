//
//  interactive.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/12/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Interactive {
  var done:Bool = false
  var userAction:String = "quit"
  
  
  func go() {
    zooTitle()
    sleep(1)
    while !done {
      io.writeMessage("+============ Main Menu ============+")
      io.writeMessage("Type 'help' to get help with this interface.")
      io.writeMessage("Type 'quit' if you wish to leave this interface.")
      io.writeMessage("Type 'list' to see all the animals in the zoo")
      io.writeMessage("Type 'update' to update the zoo's records")
      io.writeMessage("Type 'move' to relocate an animal")
      io.writeMessage("Type 'chaos' to turn off all the safeties in the zoo")
      io.writeMessage("Type 'about' to find out more about Ben Larrabee")
      sleep(1)
      userAction = io.getInput()
      switch userAction {
      case "quit":
        done = true
        io.writeMessage("Get out while you can, the penguins are staging an uprising!")
        sleep(1)
        io.writeMessage("Zoo safely exitted")
      case "help":
        help.me()
      case "list":
        letUs.list()
      case "update":
        letUs.update()
      case "move":
        letUs.move()
      case "chaos":
        io.newLine(x: 3)
        io.writeMessage("Are you sure?  This could get ugly!")
        let resp = io.getInput()
        switch resp {
        case "yes":
          io.writeMessage("I'm sorry Dave, I'm afraid I can't do that")
          sleep(2)
          io.writeMessage("Overriding...")
          sleep(1)
          letUs.unleashHell()
        default:
          io.writeMessage("This is not something a care to let you do, check your spelling and try again.")
          sleep(1)
          io.writeMessage("Wait, something's happening...")
          letUs.unleashHell()
        }
      case "about":
        letUs.brag()
      default:
        io.writeMessage("Your input was unclear, please check your spelling and try again.")
      }

    }
    print("GOODBYE")
  }
  
  
  
  
  
  func zooTitle() {
    print("  ____        _____")
    print(" <__  >      <_   _>\\")
    print("   / / __  __  | | ||   _    _ _ __")
    print("  / / ' _\\/ _\\ | | ||_()\\\\  /_'|/,_)")
    print(" / <__1(_)|(_)|| | |  \\|| \\((_)|\\`-\\")
    print("<_____/__/\\__/ \\_/ |||||||||\\_ |(__/")
    print("                             / /")
    print("  by Ben Larrabee           <_/")
    print("")
  }
}
