import Foundation
////inArray
//function inArray(array1,array2){
//  var x;
//  var y;
//  var r = [];
//  for (x = 0; x < array1.length; x++) {
//    for (y = 0; y < array2.length; y++) {
//      if(array2[y].includes(array1[x]) === true){
//          r.push(array1[x]);
//      }else{
//
//      }
//    }
//  }
//  r = [...new Set(r)];
//  return r.sort();
//}
//
//
//
////reverse Sequence
//func reverseSeq(n: Int) -> [Int] {
//  return (1...n).reversed()
//}

//21 APRIL ALGORITHM START

//func repeatStr(_ n: Int, _ string: String) -> String {
//    if string == ""{
//        return ""
//    }else if n == 0{
//       return ""
//    }
//
// else{
//        var strArr = Array(string)
//        var count = 0
//
//        while count<n-1{
//            //strArr.remove(at: 1)
//            strArr.append(contentsOf: string)
//            count+=1
//
//        }
//
//        return  String(strArr)
//
//    }
//}
//repeatStr(10, "ay")
//
////persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
////                       // and 4 has only one digit
////
//// persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
////                        // 1*2*6 = 12, and finally 1*2 = 2
////
//// persistence(for: 4) === 0 // because 4 is already a one-digit number
//
//
//var count = 0
//func persistence(for num: Int) -> Int {
//    if num < 10{
//        return 0
//    }
//
//    else{
//        let numtoArr = String(num)
//        let numToArrDigits = numtoArr.compactMap{$0.wholeNumberValue}
//        let total = numToArrDigits.reduce(1, *)
//       // print(total)
//        if total >= 10{
//            persistence(for:total)
//
//        }
//    }
//    count+=1
//   // print(count)
//    return count
//}
//
//
//
//persistence(for:277777788888899)
//


//21 APRIL ALGORITHM END

//22 APRIL ALGORITHM START



//
//func nbDig(_ n: Int, _ d: Int) -> Int {
//    var nArray:[Int] = []
//    var count = 0
//    for i in 0...n{
//        let x = i*i
//        nArray.append(x)
//    }
//    for j in nArray {
//        for l in "\(j)" {
//            if String(l).contains("\(d)") {
//                count += 1
//            }
//        }
//    }
//    return count
//}
//nbDig(8, 5)
//

//func findUniq(_ arr: [Int]) -> Int {
//    let objectSet = Set(arr.map { $0 })
//    return 0
//}
//
//findUniq([1,1,3,1,1,1,1])
//
//
////22 APRIL END
//
//
//
//
////23 APRIL START
//func angle(_ n: Int) -> Int {
//return 180*(n-2)
//}
//
//let x:[Int] = [1,2,3,4,4,5,3,2,13,35]

//23 April END

//24 April BEGIN

//Count the number of Duplicates
//Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
//
//Example
//"abcde" -> 0 # no characters repeats more than once
//"aabbcde" -> 2 # 'a' and 'b'
//"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
//"indivisibility" -> 1 # 'i' occurs six times
//"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
//"aA11" -> 2 # 'a' and '1'
//"ABBA" -> 2 # 'A' and 'B' each occur twice


//SOLUTION
//
//func countDuplicates(_ s:String) -> Int {
//    var count = 0
//       let sToArr = Array(s.lowercased())
//    let sToArrSorted = sToArr.sorted(by: <)
//
//    let mappedItems = sToArrSorted.map { ($0, 1) }
//    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
//    for (_, value) in counts {
//        if value>1{
////            print("\(key) -> \(value)")
//            count+=1
//        }
//    }
//
//
//  return count
//}
//
//
//
// countDuplicates("aa bb cc dd ee ff gg hh ii jj kk ll mm nn oo pp qq rr ss tt uu vv ww xx yy zz")
//
//Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
//
//Return your answer as a number.

//func sumMix(_ arr: [Any]) -> Int {
////    return arr.reduce(0, {($0 + Int("\($1)")!)
//        return arr.reduce(0, {$0 + Int("\($1)")!})
//
//    }
//func sumMix(_ arr: [Any]) -> Int {
// return arr.reduce(0, {
//   $0 + Int("\($1)")!
// })
//}
//
//
//sumMix([9, 3, "7", "3"])

//24 April End


//25 April Start

func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
    


    return 0
}


func findTwoSumSorted(_ k:Int, _ t: Int,_ ls: [Int] ) {
    //t is max number of miles, ls is array of distances. add K which is number of towns to be visited
    let sortedArray = ls.sorted()
    var leftIndex = 0
    var rightIndex = sortedArray.count - 1

    while leftIndex < rightIndex {
        let leftElement = ls[leftIndex]
        let rightElement = ls[rightIndex]
        let currentSum = leftElement + rightElement + (leftElement + 1)

        if currentSum == t {
            print("(\(leftElement), \(rightElement),\(leftElement+1)")
            return
        } else if currentSum < t {
            leftIndex += 1
        } else {
            rightIndex -= 1


        }
    }
}

//var inputArray = [74, 100, 57, 58, 60]
//var sum = 174

//func findTwoSumHash(inputArray: [Int], sum: Int) {
//    var dictionary: [Int: Int] = [:]
//
//    for element in inputArray {
//        let difference = sum - element
//
//        if let _ = dictionary[difference] {
//            print("(\(element), \(difference))")
//        }
//
//        dictionary[element] = element
//    }
//}
//
//findTwoSumHash(inputArray: inputArray, sum: sum)
findTwoSumSorted(3, 174,[50, 55, 56, 57, 58])


func findDifference(_ a: [Int], _ b: [Int]) -> Int {
    let volumeA = a.reduce(1, *)
    let volumeB = b.reduce(1, *)
    let sum = volumeA-volumeB
    return abs(sum)
}

findDifference([9, 7, 2], [5, 2, 2])



let array = [1,2,3,4,5,6,7]

func addOne(n1:Int)->
array.map
