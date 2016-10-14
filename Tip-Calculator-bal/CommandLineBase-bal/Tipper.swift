//
//  Tipper.swift
//  CommandLineBase-bal
//
//  Created by Ben Larrabee on 10/10/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

class Tipper {
  private var tipAmt : Double = 100.00
  private var serveQuality : Int = 3
  private var tipQuality : Double = 1.15
  private var numOfParty : Int = 1
  private var validAmt : Bool = false
  private var validTip : Bool = false
  private var validParty : Bool = false
  private var calculating : Bool = true
  private var io = Io()
  private var help = Helper()
  
  
  func tipprompt() {
    while !(validAmt && validTip && validParty) {
      while !validAmt {
        io.writeMessage(" /-/ /\\  I Hope your meal was fantastic!\n \\/ /\\  What was the total of your bill?  \n /_/_/  Please use DDD.dd format")
        tipAmt = io.getDoubleAmount()
        if (tipAmt > 0.0) {
          validAmt = true
        }else {
          validAmt = false
          if tipAmt == -2 {
            help.helpprompt(from: .amount)
            //
          }
        }
      }
      
      io.writeMessage("  _____      Rate the quality of your service, with \n /_  _/___   1: terrible service\n  / / / /_\\  2: poor service\n /_/ /_/ _/  3: average service\n      /_/    4: great service\n             5: fantastic service")
      serveQuality = io.getIntAmount()
      if (serveQuality == -1) {
        io.writeMessage("Preparing to quit and return you to the previous menu.")
        sleep(2)
        break
      }
      if (serveQuality == -2) {
        help.helpprompt(from: .tipquality)
        io.writeMessage("Now, about that service?")
        serveQuality = io.getIntAmount()
      }
      switch serveQuality {
      case 1:
        tipQuality = 1.1; validTip = true
      case 2:
        tipQuality = 1.14; validTip = true
      case 3:
        tipQuality = 1.15; validTip = true
      case 4:
        tipQuality = 1.18; validTip = true
      case 5:
        tipQuality = 1.25; validTip = true
      default:
        tipQuality = 1.15; validTip = true
      }
      io.writeMessage("How many will be splitting the bill?")
      numOfParty = io.getIntAmount()
      if (numOfParty > 0) {
        validParty = true
      } else {
        validParty = false
      }
      if !(validAmt && validTip && validParty) {
        io.writeMessage("oops, something went wrong, let's try that again.")
      }
    }
    var laydown: Double = (tipAmt * tipQuality)/Double(numOfParty)
    validAmt = false; validTip = false; validParty = false
    laydown = laydown*100.rounded()/100.0
    if numOfParty == 1 {
      io.writeMessage("Your total after tip will be $\(laydown).  Thanks for using Tip Calculator.")
    } else {
      io.writeMessage("Each paying member of your party should contribute $\(laydown).")
    }
    sleep(3)
  }
}
