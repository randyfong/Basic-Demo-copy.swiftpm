import SwiftUI

struct ContentView: View {
    @State var model = Model.decode(Model.testData)
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List(model) { m in 
                HStack {
                    Image(m.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height: 50)
                    Text(m.title)
                        .padding(.leading)
                }
            }
            .searchable(text: $searchText)
        }
    }
}
