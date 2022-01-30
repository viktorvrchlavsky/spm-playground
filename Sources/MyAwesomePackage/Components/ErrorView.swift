//
//  ErrorView.swift
//  
//
//  Created by Viktor Vrchlavsky on 30.01.2022.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        Text("Oh no! Something went wrong!")
            .font(.title)
            .foregroundColor(.red)
            .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
