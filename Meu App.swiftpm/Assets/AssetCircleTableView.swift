import SwiftUI

struct AssetCircleTableView: View { 
    @State var rows: Int
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { index in 
                AssetCircleRowView(rowNum: 10)
            }
        }
    }
}

#Preview {
    AssetCircleTableView(rows: 10)
}
