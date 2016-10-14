//
//  Interactive.swift
//  CommandLineBase-bal
//
//  Created by Ben Larrabee on 10/10/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Interactive {
  private var done: Bool = false
  private var currentInput: String = "q"
  private var io = Io()
  private var helper = Helper()
  private var tipper = Tipper()
  private var tip : Double = 0.0
  
  func go() {
    
    while !done {
      showOff()
      // Ask the user for input
      io.writeMessage("\n\nWelcome to Tip Calculator by  Ben Larrabee\nPress 't' to calculate a tip, press 'q' to quit, or press 'h' for help.")
      currentInput = io.getInput()
      
      if currentInput == "q"  {
        done = true
      } else if currentInput == "h" {
        helper.helpprompt(from: .main)
        print("I didn't understand: \(currentInput).  Please\nPress 't' to calculate a tip, press 'q' to quit, or press 'h' for help.")//clearly this needs to change
      } else if currentInput == "t" {
        tipper.tipprompt()
        sleep(2)
      }
      
    }
    print("Exiting...")
    
    return  // end of program
    
  }
  func showOff() {
    print("  ____/\\__ ___________.__         _________        .__               .__          __")
    print(" /   / /_/ \\__    ___/|__|_____   \\_   ___ \\_____  |  |   ____  __ __|  | _____ _/  |_  ___________")
    print("  \\_/ / \\    |    |   |  \\____ \\  /    \\  \\/\\__  \\ |  | _/ ___\\|  |  \\  |  \\__  \\   __\\/  _ \\_  __ \\")
    print(" / / /   \\   |    |   |  |  |_> > \\     \\____/ __ \\|  |_\\  \\___|  |  /  |__/ __ \\|  | (  <_> )  | \\/")
    print("/_/ /__  /   |____|   |__|   __/   \\______  (____  /____/\\___  >____/|____(____  /__|  \\____/|__|")
    io.writeMessage("  \\/   \\/                |__|             \\/     \\/          \\/                \\/ (c) Ben Larrabee                  ")
  }
}
