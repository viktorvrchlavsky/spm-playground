//
//  ContentView.swift
//  Example
//
//  Created by Viktor Vrchlavsky on 30.01.2022.
//

import SwiftUI
import MyAwesomePackage
import AsyncView

struct ContentView: View {
    let imageLoader: MyAwesomePackage

    var body: some View {
        AsyncView(
            operation: {
                await imageLoader.getRandomPussyImage()
            }, content: { view in
                view
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(imageLoader: MyAwesomePackage())
    }
}
