//
//  person class.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/13/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Person : Zoothing {
  
  var name:String = "Joey"
  
  init(id:Int, location:Zooplace, type:AnimalType = .Human, short:String, name:String){
    super.init(id: id, location: location, type: type, short: short)
    self.name = name
  }
  override func about() {
    io.writeMessage("This is \(self.name) with ID: \(self.id).  \(self.short)  This person is in the \(self.location).")
  }
  override func locate() {
    io.writeMessage("\(self.name) with ID \(self.id) is in the \(self.location).")
  }
  override func move(to: Zooplace) {
    self.location = to
    io.writeMessage("\(self.name) walks over to the \(self.location).")
  }
}



