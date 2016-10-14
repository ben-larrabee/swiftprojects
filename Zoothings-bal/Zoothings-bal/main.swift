//
//  main.swift
//  Zoothings-bal
//
//  Created by Ben Larrabee on 10/12/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation

let io = Io()
let interactive = Interactive()
let help = Helper()
let letUs = ShallWe()

var nextID:Int = 1005

let frank = Employee(id: 1001, location: .BigCats, short: "Frank is a short guy, always sweeping.", name: "Frank Miller", job: "janitor")
let gloria = Hippo(id: 1002, location: .Primates, type: .Hippo, short: "Gloria is a ponderous hippo.", noiseMade: "hey, HEY!", locomotion: "plod")
let alex = Lion(id: 1003, location: .BigCats, type: .Lion, short: "Alex is star material, a perfect speciman of a lion.", noiseMade: "roar", locomotion: "run")
let melman = Giraffe(id: 1004, location: .ReptileZone, type: .Giraffe, short: "Melman is very tall, but a perpetual hypochondriac.", noiseMade: "achoo", locomotion: "stride")
let dougie = Customer(id: 1005, location: .ReptileZone, short: "Dougie wears a ballcap, and looks pouty.", name: "Dougie Jones", fav: .Lion)

let theZoo = Zoo()
var myZoo = theZoo.has

interactive.go()

