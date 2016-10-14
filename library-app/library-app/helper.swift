//
//  helper.swift
//  library-app
//
//  Created by Ben Larrabee on 10/11/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation
// access with helpWith.
class Helper {
  
  var gettingHelp = true
  
  func theApp() {
    io.writeMessage("Shh... is a training app that simulates a library and the processes involved.")
    //return to top
    interactive.go()
  }
  func theMenu() {
    io.writeMessage("you will have to choose one of the listed menu items.")
    //return to the menu
    myMenu.display()
  }
}


