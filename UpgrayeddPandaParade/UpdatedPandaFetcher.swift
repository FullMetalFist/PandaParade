//
//  UpdatedPandaFetcher.swift
//  UpgrayeddPandaParade
//
//  Created by Michael Vilabrera on 6/25/25.
//  Originally from Apple
//  

import SwiftUI

//
// This is only an update to 🍎's tutorial found here:
// https://developer.apple.com/tutorials/sample-apps/memecreator
// using this guide:
// https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro
//

@Observable
class UpdatedPandaFetcher {
    var imageData = PandaCollection(sample: [Panda.defaultPanda])
    var currentPanda = Panda.defaultPanda
    
    let urlString = "http://playgrounds-cdn.apple.com/assets/pandaData.json"
    
    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
     func fetchData() async
     throws  {
        guard let url = URL(string: urlString) else { return }

        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest }

        Task { @MainActor in
            imageData = try JSONDecoder().decode(PandaCollection.self, from: data)
        }
    }
}
