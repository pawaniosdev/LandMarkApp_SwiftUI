//
//  DataModel.swift
//  SwiftUI LandMark
//
//  Created by Pawan kumar Verma on 26/07/25.
//

import SwiftUI
var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName: String) -> T {
    var data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Error: couldn't load the file in the bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Error: No Data found in the file")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Error: Could not parse the data.")
    }
}
