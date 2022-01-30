//
//  PussyImageView.swift
//  
//
//  Created by Viktor Vrchlavsky on 30.01.2022.
//

import SwiftUI

struct PussyImageView: View {
    let imageURL: URL

    var body: some View {
        AsyncImage(url: imageURL) { image in
            image.scaledToFit()
        } placeholder: {
            ProgressView() {
                Text("Loading")
                    .font(.caption)
            }
            .tint(.accentColor)
        }
        .frame(width: 500, height: 500)
        .padding()
    }
}

struct PussyImage_Previews: PreviewProvider {
    static var previews: some View {
        PussyImageView(imageURL: URL(string: "https://purr.objects-us-east-1.dream.io/i/Kfi6I.jpg")!)
    }
}
