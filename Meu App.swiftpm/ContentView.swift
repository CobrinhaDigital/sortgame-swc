import SwiftUI

struct ContentView: View {
    @State var rowNum: Int
    var body: some View {
        let randomNum = (0..<rowNum).map { //qtd de bolhas
            _ in Int.random(in: 0..<100) //intervalo de bolhas
        }
        
        HStack {
            ForEach(0..<randomNum.count, id: \.self) { index in
                Circle()
                    .frame(maxWidth: 50, maxHeight: 50)
            }
        }
    }
}

#Preview {
    ContentView(rowNum: 10)
}
