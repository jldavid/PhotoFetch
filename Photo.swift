import SwiftUI

struct Photo: Identifiable {

    var id: String = UUID().uuidString
    let name: String
    var image: UIImage

    /// Init
    init(name: String, image: String) {
        self.name = name
        let url = URL(string: image)
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        self.image = UIImage(data: data!)!
    }

}

