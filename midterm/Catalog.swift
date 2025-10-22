import SwiftUI
 
struct CameraItem: Codable, Equatable, Identifiable {
    let id: String
    let name: String
    let description: String
    let imageName: String

    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)"
    }

    #if DEBUG
    static let example = CameraItem(id: "aa32jj887hhg55",
                                     name: "Makina 67",
                                     description: "The Makina 67 is a 6×7 strut folding camera with a coupled rangefinder. It was developed by Plaubel after the company was bought in 1975 by a Japanese company named Doi and released in March 1979.",
                                     imageName: "makina67")
    #endif
}
