import SwiftUI

struct AssetCircleView: View {
    let sphereNum: Int
    var colors: [Color] = [.red, .blue, .green, .yellow, .orange, .cyan, .pink, .purple, .brown, .indigo, .gray, .mint, .teal]
    
    var body: some View {
        ZStack {
            Circle()
                .frame(maxWidth: 80, maxHeight: 80)
                .foregroundStyle(.blue)
            Text("\(sphereNum)")
                .font(.largeTitle)
                .foregroundStyle(.black)
                .bold()
        }
    }
}

#Preview {
    AssetCircleView(sphereNum: 1)
}
