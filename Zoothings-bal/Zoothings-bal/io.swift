//
//  io.swift
//  CommandLineBase-bal
//
//  Created by Ben Larrabee on 10/10/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Io {
  func getInput() -> String {
    prompt()
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
    if let string = str {
      return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    } else {
      return "Invalid input!"
    }
  }
  func getDoubleAmount() -> Double {
    let rawInput = getInput()
    if rawInput == "q" {
      return -1
    } else if rawInput == "h" {
      return -2
    } else {
    let maybeDouble : Double? = Double(rawInput)
//    var maybeDouble : Double?
//    let keyboard = FileHandle.standardInput
//    let inputData = keyboard.availableData
//    let digs = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
//    maybeDouble = Double(digs)!
    return maybeDouble!
    }
  }
  
  func getIntAmount() -> Int {
    let rawInput = getInput()
    if (rawInput[rawInput.startIndex] == "Q" || rawInput[rawInput.startIndex] == "q") {
      return -1
    } else if (rawInput[rawInput.startIndex] == "H" || rawInput[rawInput.startIndex] == "h") {
      return -2
    } else {
    let maybeInt : Int? = Int(rawInput)
    return maybeInt!
    }
  }
  
  func writeMessage(_ message: String) {
    print(": \(message)\n|")
  }
  func ioPrint(_ message: String) {
    print(message)
  }
  func newLine() {
    print(":\n")
  }
  func newLine(x: Int) {
    for _ in 1...x {
      newLine()
    }
  }
  func prompt() {
    print(": >>", terminator: "")
  }
}
