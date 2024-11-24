import SwiftUI

struct ResultView: View {
    let textResult: String 
    var body: some View {
        Text("\(textResult)")
    }
}

#Preview {
    ResultView(textResult: "ok")
}
