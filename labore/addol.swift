import SwiftUI

// Assuming the definition of Library is as follows:
struct Library {
    var name: String
    var books: [String]
}

struct ContentView: View {
    @State private var library: Library?

    var body: some View {
        VStack {
            if let library = library {
                Text("Library: \(library.name)")
                List(library.books, id: \.self) { book in
                    Text(book)
                }
            } else {
                Text("No Library Selected")
                Button(action: {
                    // Simulating loading a library
                    self.library = Library(name: "City Library", books: ["Book 1", "Book 2", "Book 3"])
                }) {
                    Text("Load Library")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
