//
//  zoothings.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/12/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//
import Foundation

class Zoothing {
  
  enum Zooplace {
    case ReptileZone
    case BigCats
    case Birds
    case Primates
    case OutOfZoo
  }
  
  enum AnimalType:String {
    case Lion = "lion"
    case Giraffe = "giraffe"
    case Hippo = "hippo"
    case Penguin = "penguin"
    case Zebra = "zebra"
    case Human = "person"
  }
  
  let id:Int
  var location:Zooplace
  let type:AnimalType
  var short:String
  var noiseMade:String = ""
  var locomotion:String = ""
  
  init(id:Int, location:Zooplace, type:AnimalType, short:String){
    self.id = id
    self.location = location
    self.type = type
    self.short = short
  }
  
  func about(){
    io.writeMessage("This is a \(self.type.rawValue) with ID \(self.id).  \(self.short)  It is in the \(location) area.")
  }
  
  func locate(){
    io.writeMessage("The \(self.type.rawValue) with ID\(self.id) is in the \(location).")
  }
  
  func move(to: Zooplace){
    self.location = to
    io.writeMessage("The \(self.type.rawValue) has moved into the \(location).")
  }
  
  func makeNoise() {
    //not available to all
  }
}





