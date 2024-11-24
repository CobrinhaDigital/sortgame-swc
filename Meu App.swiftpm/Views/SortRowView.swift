import SwiftUI

struct SortRowView: View {
    @State var rowNum: Int
    @State var tapCount = 0
    @State var randomNums: [Int] = [] 
    @State var numsIndex: [Int] = []    
    @State var isOrdered: Bool = false
    @State var isSubmited: Bool = false
    @State var startTime = NSDate.timeIntervalSinceReferenceDate
    @State var endTime = NSDate.timeIntervalSinceReferenceDate
    
    func checkOrder() {
        isSubmited.toggle()
        var error: Bool = false
        for i in 0..<(randomNums.count - 1) {
            if randomNums[i] > randomNums[i + 1] {
                error = true
                print("erro")
                break
            }
        }
        if error {
            isOrdered = false
        } else {
            isOrdered = true  
        }
    }
    
    var body: some View {
        NavigationStack {
            Text("\(startTime)")
            HStack {
                ForEach(0..<randomNums.count, id: \.self) { index in
                    AssetCircleView(sphereNum: randomNums[index])
                }
                    .onTapGesture {
                        tapCount += 1 
                        print(randomNums)
                        print(numsIndex)
                        if tapCount == 2 {
                            withAnimation(.bouncy(duration: 0.5)) {
                            randomNums.swapAt(numsIndex[0], numsIndex[1])
                        }
                        print(randomNums)
                        print(numsIndex)
                        numsIndex.removeAll()
                        tapCount = 0 
                    }
                 }
            }
            .navigationDestination(isPresented: $isSubmited) { 
                if isOrdered {
                    Text("Correto")
                } else {
                    Text("Erro")
                }
            }
            .onAppear {
                randomNums = (0..<rowNum).map { //qtd de bolhas
                    _ in Int.random(in: 0..<20) //intervalo de bolhas
                }
            }
            .padding(.horizontal)
            Button("Submit") {
                checkOrder()
            }
        }
    }
}

#Preview {
    SortRowView(rowNum: 10)
}
