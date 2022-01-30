import SwiftUI

public struct MyAwesomePackage {

    let pussyLoader: PussyLoader

    public init() {
        self.pussyLoader = PussyLoader()
    }

    public func getRandomPussyImage() async -> AnyView {
        guard let result = try? await pussyLoader.getRandomPussyImageURL() else {
            return AnyView(ErrorView())
        }

        switch result {
        case .success(let url):
            return AnyView(PussyImageView(imageURL: url))
        case .failure:
            /// I don't really care about the error since this preview is not about
            /// error handling neither networking etc.
            return AnyView(ErrorView())
        }
    }
}
