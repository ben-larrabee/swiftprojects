//
//  employee class.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/13/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Employee : Person {
  var job:String = "janitor"
  
  init(id:Int, location:Zooplace, type:AnimalType = .Human, short:String, name:String, job:String){
    super.init(id: id, location: location, type: type, short: short, name: name)
    self.job = job
  }
  override func move(to: Zooplace) {
    self.location = to
    io.writeMessage("The zoo \(self.job), \(self.name), has moved to the \(self.location).")
  }
}
