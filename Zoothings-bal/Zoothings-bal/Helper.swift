//
//  Helper.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/12/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Helper {
  
  
  
  
  func me() {
    io.writeMessage("+==================================== Help =========================================+")
    io.newLine()
    io.writeMessage("This app iss an asset management system.  It will allow you to view the occupants of the zoo.")
    io.writeMessage("These occupants are collectively refered to as ZooThings.  They include the differet species,")
    io.writeMessage("as well as the employees and customers.  Use the prompts to determine valid commands at each menu.")
    io.writeMessage("If you are looking to live dangerously, you should choose the 'chaos' command from the main menu.")
    io.newLine(x: 2)
  }
  
}
