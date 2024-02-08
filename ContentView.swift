import SwiftUI

struct ContentView: View {
    
    @State private var urlString: String = ""
    @State var url = URL(string: "https://picsum.photos/500")
    
    private let transaction: Transaction = .init(animation: .linear)
    
    var body: some View {
        VStack {
            HStack {
                TextField("http://", text: $urlString)
                    .submitLabel(.go)
                    .autocapitalization(.none)
                    .keyboardType(.URL)
                Button(action: {
                    url = URL(string: urlString)
                }) {
                    Text("DOWNLOAD")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .buttonStyle(.borderedProminent)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            }
            AsyncImage(url: url) { image in
                image
                    .image?.resizable()
                    .cornerRadius(12)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
