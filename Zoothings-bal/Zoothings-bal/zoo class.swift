//
//  zoo class.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/13/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Zoo {
  enum Zooplace {
    case ReptileZone
    case BigCats
    case Birds
    case Primates
    case OutOfZoo
  }
  var has = [frank, gloria, alex, melman, dougie]
  var activeArea : Zooplace = .OutOfZoo
  
  func shake () {
    for Zoothing in has {
      Zoothing.makeNoise()
    }
  }
  
}
