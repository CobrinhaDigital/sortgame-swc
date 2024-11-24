import SwiftUI

struct AssetCircleRowView: View {
    @State var rowNum: Int
    @State var randomNums: [Int] = [] 
    @State var numsIndex: [Int] = []    
    
    var body: some View {
        HStack {
            ForEach(0..<randomNums.count, id: \.self) { index in
                AssetCircleView(sphereNum: randomNums[index])
            }
        }
        .onAppear {
            randomNums = (0..<rowNum).map { //qtd de bolhas
                _ in Int.random(in: 0..<20) //intervalo de bolhas
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AssetCircleRowView(rowNum: 10)
}
