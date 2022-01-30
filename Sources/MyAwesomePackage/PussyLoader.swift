//
//  File.swift
//  
//
//  Created by Viktor Vrchlavsky on 30.01.2022.
//

import Foundation

typealias RawResponse = (data: Data, response: URLResponse)

class PussyLoader {
    private let randomPussyURL = URL(string: "https://api.thecatapi.com/v1/images/search")!

    func getRandomPussyImageURL() async throws -> Result<URL, Error> {
        let rawResponse: RawResponse = try await URLSession.shared.data(from: randomPussyURL)
        let decoder = JSONDecoder()
        return Result {
            try decoder.decode(PussyImage.self, from: rawResponse.data).url
        }
    }
}

struct PussyImage: Decodable {
    /// Example response
    /// [{"breeds":[],"id":"XdpjlxhmW","url":"https://cdn2.thecatapi.com/images/XdpjlxhmW.false","width":1000,"height":667}]
    /// don't really need other params other than the image URL ATM 🤷‍♂️
    let url: URL
}
