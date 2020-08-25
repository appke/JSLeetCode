let s1 = "pwwkew"
let s2 = "abcaghh"
func lengthOfLongestSubString(_ s: String) -> Int {
    let charArray: [Character] = Array(s)
    if charArray.count <= 1 { return charArray.count }
    
    // 初始值
    var maxLength = 1
    var resultDict = [charArray[0]: 0]
    var i = 0, j = 1

    while j < charArray.count {
        print("i==\(i)---j==\(j)-----\(resultDict[charArray[j]])")
        if let index = resultDict[charArray[j]], index >= i {
            i = index+1
        }
        resultDict[charArray[j]] = j
        maxLength = max(j-i+1, maxLength)
        print("\(j)----\(charArray[j])------\(resultDict[charArray[j]])")
        
        j += 1
    }
    
    return maxLength
}

//lengthOfLongestSubString(s1)
lengthOfLongestSubString(s2)

/**
 abcaghh
  |    |
 a 0
 */

