//
//  ExampleApp.swift
//  Example
//
//  Created by Viktor Vrchlavsky on 30.01.2022.
//

import SwiftUI
import MyAwesomePackage

@main
struct ExampleApp: App {
    let loader = MyAwesomePackage()

    var body: some Scene {
        WindowGroup {
            ContentView(imageLoader: loader)
        }
    }
}
