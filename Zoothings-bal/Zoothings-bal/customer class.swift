//
//  customer class.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/13/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Customer : Person {
  var favoriteAnimal:AnimalType
  
  init(id:Int, location:Zooplace, type:AnimalType = .Human, short:String, name:String, fav:AnimalType){
    self.favoriteAnimal = fav
    super.init(id: id, location: location, type: type, short: short, name: name)
  }
  
  func squees() {
    
  
  }
}
