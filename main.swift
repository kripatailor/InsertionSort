var words = [String]()
var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}



var tempArray = words 
var totalSwaps = 0 
var numSwaps = 0
var Passes = 0


func Swap(words: inout [String], index1: Int, index2: Int) {
    let Int1 = words[index1]
    let Int2 = words[index2]

    words[index1] = Int2
    words[index2] = Int1
    
    numSwaps += 1

}

func insertion(words: inout [String]) {
    
    for index in 0..<words.count {
        
        var swapIndex = index
        
        numSwaps = 0

        while swapIndex > 0 {
            if words[swapIndex] < words[swapIndex - 1] {
                Swap(words: &words, index1: swapIndex, index2: swapIndex - 1)

                swapIndex -= 1
                totalSwaps += 1
            } else {
                
                break
            }
        }
        print("Pass: \(Passes), Swaps: \(numSwaps)/\(totalSwaps), Array: \(words)")

        Passes += 1
    }
}

insertion(words: &tempArray)


