//
//  Panda.swift
//  UpgrayeddPandaParade
//
//  Created by Michael Vilabrera on 6/25/25.
//  Originally from Apple
//  

import Foundation

struct Panda: Codable {
    var description: String
    var imageUrl: URL?
    
    static let defaultPanda = Panda(description: "Cute Panda",
                                    imageUrl: URL(string: "https://assets.fakeStuff.apple.com/playgrounds/_assetsNotThere/pandas/pandaBuggingOut.jpg"))
}

struct PandaCollection: Codable {
    var sample: [Panda]
}
