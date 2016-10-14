//
//  animal class.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/13/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation


class Animal : Zoothing {
  
  init(id:Int, location:Zooplace, type:AnimalType, short:String, noiseMade:String, locomotion:String){
    super.init(id: id, location: location, type: type, short: short)
    self.noiseMade = noiseMade
    self.locomotion = locomotion
  }
  
  override func makeNoise() {
    io.writeMessage("This \(self.type.rawValue) \(noiseMade)s")
  }
  
  override func move(to: Zooplace){
    self.location = to
    io.writeMessage("This \(self.type.rawValue) \(self.locomotion)s to the \(location).")
  }
}

class Lion : Animal {
  override init(id:Int, location:Zooplace, type:AnimalType = .Lion, short:String, noiseMade:String = "roar", locomotion:String){
    super.init(id: id, location: location, type: .Lion, short: short, noiseMade: "roar", locomotion: locomotion)
  }
}

class Giraffe : Animal {
  override init(id:Int, location:Zooplace, type:AnimalType = .Giraffe, short:String, noiseMade:String = "hmmmm", locomotion:String){
    super.init(id: id, location: location, type: .Giraffe, short: short, noiseMade: "hmmmm", locomotion: locomotion)
  }
}

class Hippo : Animal {
  override init(id:Int, location:Zooplace, type:AnimalType = .Hippo, short:String, noiseMade:String = "grumble", locomotion:String){
    super.init(id: id, location: location, type: .Hippo, short: short, noiseMade: "grumble", locomotion: locomotion)
  }
}

class Zebra : Animal {
  override init(id:Int, location:Zooplace, type:AnimalType = .Zebra, short:String, noiseMade:String = "neigh", locomotion:String){
    super.init(id: id, location: location, type: .Zebra, short: short, noiseMade: "neigh", locomotion: locomotion)
  }
}
