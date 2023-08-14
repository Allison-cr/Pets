import SwiftUI
import Combine

struct ImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()

    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }

    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onReceive(imageLoader.$data) { data in
                self.image = UIImage(data: data) ?? UIImage()
            }
    }
}

class ImageLoader: ObservableObject {
    @Published var data = Data()

    init(url: String) {
        guard let imageUrl = URL(string: url) else { return }
        URLSession.shared.dataTask(with: imageUrl) { (data, _, _) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}

