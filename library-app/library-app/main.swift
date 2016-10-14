//
//  main.swift
//  library-app
//
//  Created by Ben Larrabee on 10/11/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation
let shallWe = LetUs()
let interactive = Interactive()
let helpwith = Helper()
let io = Io()
let myMenu = Menu()
let userCalendar = Calendar.current

//Run in interactive mode
let mobyDick = Content(checked: false, dueDate: Date(), lastCheckIn: Date(), id: 100101, keywords: ["whales", "obssession", "harpoon"], name: "Moby Dick")
let braveNewWorld = Content(checked: true, dueDate: Date(timeIntervalSinceNow: 60*60*24*8), lastCheckIn: Date(timeIntervalSinceNow: -60*60*24*2), id: 100102, keywords: ["distopia", "Ford"], name: "Brave New World")
let heartOfDarkness = Content(checked: false, dueDate: Date(), lastCheckIn: Date(timeIntervalSinceNow: -60*60*24*112), id: 100103, keywords: ["classic"], name: "Heart of Darkness")

collection.append(mobyDick)
collection.append(braveNewWorld)
collection.append(heartOfDarkness)
interactive.go()

exit(EXIT_SUCCESS)
