//
//  Helper.swift
//  CommandLineBase-bal
//
//  Created by Ben Larrabee on 10/10/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//
import Foundation

enum HelpCase{
  case main
  case tipquality
  case amount
  case howmany
  case other
}

class Helper {
  private var inhelp: Bool = true
  private var io = Io()
  private var currentInput: String = ""
  
  func helpprompt(from: HelpCase = .main) {
    inhelp = true
    print("  ___ ___          __")
    print(" /   |   \\   ____ |  | ______")
    print("/    ~    \\_/ __ \\|  | \\____ \\")
    print("\\    Y    /\\  ___/|  |_|  |_> >")
    print(" \\___|_  /  \\___  >____/   __/")
    print("       \\/       \\/     |__| \n")
    
    switch from {
    case .main:
      while inhelp {
        io.writeMessage("Okay, Dum Dum, you obviously want me to calculate a tip, so let's try\nreal hard to make this simple.  When you press 't' and press Enter, I'll ask three questions, and when you answer them... wait for it,\nI'll tell you how much money to put down")
        exit()
        
      }
    case .tipquality:
      while inhelp {
        io.writeMessage("According to experts, even the poorest service still deserves a tip.  In fact, restaurants report a percentage (around 12%) of the gross sales for food and beverage to the IRS for their staff.  If you get awful service, talk to the manager. The manager cannot correct the situation if he doesn't know about it. Skipping the tip will not accomplish anything, and the next poor customer who gets that server will get the same service you did.  I recommend tipping 10-15% on the alcohol and 15-20% on the food.")
        exit()
      }
    case .amount:
      while inhelp {
        io.writeMessage("At this stage, I need to know the amount of your bill.  The standard practice is to tip based off of the amount after tax.  It does lead to a slightly more genereous tip than if you based the tip amount on the pre-taxed amount")
        exit()
      }
      
    case .howmany:
      while inhelp {
        io.writeMessage("Look around yourself, and count.  But only count how many people have money to pay with")
        exit()
      }
    case .other:
      break
    default:
      io.writeMessage("How can you see me?")
      sleep(1)
      inhelp = false
    }

  }
  func randomquip() {
    io.writeMessage("I know you think I'm cute, but I'm in a committed relationship, please press 'q'")
    io.writeMessage("You seem to be having trouble.  look for the button that looks like a circle and a tail")
  }
  func exit() {
    io.writeMessage("Now please press 'q' and Enter so we can set a tip value")
    currentInput = io.getInput()
    if currentInput == "q" {
      io.writeMessage("Hope that was 'help'ful!")
      sleep(1)
      inhelp = false
    } else {
      io.writeMessage("Uh, huh, please tell me more of your inability to read")
    }
  }
}
