//
//
//  Assingment: Midterm
//
//  Student: Edgar Rosales
//  Date: 10/21/25.
//

import SwiftUI

// Parse JSON file into variables Cameras
let cameras: [CameraItem] = Bundle.main.decode([CameraItem].self, from: "Data.json")

// Create a camera list to display as the main navigational interface leading to camera detail pages
struct CameraList: View {
    var body: some View {
        NavigationStack {
            List(cameras) { section in
                NavigationLink(destination: CameraDetail(item: section)) {
                    Image(section.imageName) // thumbnail picture
                        .resizable()
                        .scaledToFit()
                    //Text("placeholder")
                    Text(section.name) // container name
                }
            }
            .navigationTitle("Range Finder Cameras")
        }
    }
}

// Template for each Camera Navigation view
struct CameraDetail: View {
    let item: CameraItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 200)
                .cornerRadius(8)
                .padding()
            
            Text(item.name)
                .font(.system(size: 32, weight: .bold))
            
            Text(item.description)
                .padding(.horizontal)
        }
        .padding()
        .navigationTitle("Camera Details")
    }
}

// Initiliaze the program by calling on CameraList() which in turn calls on CameraDetail template
struct ContentView: View {
    var body: some View {
        CameraList()
    }
}

#Preview {
    ContentView()
}
