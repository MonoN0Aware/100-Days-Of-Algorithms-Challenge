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

//func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
//
//
//
//    return 0
//}


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
//findTwoSumSorted(3, 174,[50, 55, 56, 57, 58])


//func findDifference(_ a: [Int], _ b: [Int]) -> Int {
//    let volumeA = a.reduce(1, *)
//    let volumeB = b.reduce(1, *)
//    let sum = volumeA-volumeB
//    return abs(sum)
//}
//
//findDifference([9, 7, 2], [5, 2, 2])
//
//
//
//let array = [1,2,3,4,5,6,7]
//
//func addOne(n1:Int)->
//array.map

//
//class LinkedListNode<T> {
//    var value: T
//    var next: LinkedListNode?
//    init(value: T) {
//        self.value = value
//
//    } }
//class LinkedList<T> {
//    var start: LinkedListNode<T>?
//    func printNodes() {
//        var currentNode = start
//        while let node = currentNode {
//            print(node.value, terminator: " ")
//            currentNode = node.next
//        } }
//}
//var list = LinkedList<Character>()
//var previousNode: LinkedListNode<Character>? = nil
//for letter in "abcdefghijklmnopqrstuvwxyz" {
//    let node = LinkedListNode(value: letter)
//    if let predecessor = previousNode {
//        predecessor.next = node
//    } else {
//        list.start = node
//    }
//    previousNode = node
//}
//list.printNodes()


//
//
//var centerNode: LinkedListNode<T>? {
//   var slow = start
//   var fast = start
//   while fast != nil && fast?.next != nil {
//      slow = slow?.next
//      fast = fast?.next?.next
//}
//return slow }




//func dnaComplement(_ dna: String) -> String {
//    let arrDna = Array(dna.lowercased())
//    var newArr:[String] = []
//    if arrDna == [] {
//        return ""
//    }
//
//    for i in arrDna{
//
//        if i=="a"{
//            newArr.append("T")
//        }
//
//        if i=="t"{
//            newArr.append("A")
//        }
//
//        if i=="c"{
//            newArr.append("G")
//        }
//
//        if i=="g"{
//            newArr.append("C")
//
//        }
//    }
//
//
//    let x = newArr.joined()
//
//    return x
//}
//
//
//dnaComplement("ATTGC")


func combos<T>(elements: ArraySlice<T>, kc: Int) -> [[T]] {

    if kc == 0 {

        return [[]]

    }


 

    guard let first = elements.first else {

        return []

    }


 

    let head = [first]

    let subcombos = combos(elements: elements, kc: kc - 1)

    var ret = subcombos.map { head + $0 }

    ret += combos(elements: elements.dropFirst(), kc: kc)

    return ret

}


 

func combos<T>(elements: Array<T>, kc: Int) -> [[T]] {

    return combos(elements: ArraySlice(elements), kc: kc)

}


 


 


 


//
//
//func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
//
//    var permuteLs = combos(elements:ls, kc:k)
//
//    if ls.count < 2 { return -1 }
//
//
//
//    var reject = [[Int]]()
//
//    for i in permuteLs {
//
//        var adict = [Int]()
//
//        for j in i {
//
//            if adict.contains(j) {
//
//                reject.append(i)
//
//                break
//
//            } else {
//
//                adict.append(j)
//
//            }
//
//        }
//
//    }
//
//    permuteLs.removeAll(where: { reject.contains($0) })
//
//    let a = permuteLs.map({ $0.reduce(0,+) }).filter({ $0 <= t }).max() ?? -1
//
//    return a
//
//}
//
//
//
//
////TESTS:-
//
//
//
//
//let ls = [91, 74, 73, 85, 73, 81, 87]
//
//print(chooseBestSum(230, 3, ls))
//
//print(chooseBestSum(331, 2, ls))
//
//print(chooseBestSum(331, 4, ls))
//
//
//
//
//var ts = [50, 55, 56, 57, 58]
//
//print(chooseBestSum(163, 3, ts) ) //163
//
//ts = [50]
//
//print(chooseBestSum(163, 3, ts) )// -1
//


//func countBinarySubstrings(_ s: String) -> Int {
//       let arr = Array(s)
//       var current = 1, prev = 0, substringCount = 0
//        for i in 1..<s.count {// for i in 1 to the length of the string,
//            if arr[i] == arr[i - 1] {//if that the element at this index is equal to the element of the previous index,
//                current += 1 //add 1 to current
//               // print(current)
//            }
//            else{
//                substringCount += min(current,prev)//substringcount = the lesser of the current and previous
//               // print(substringCount)
//                prev = current//set current to previous
//              //  print(prev)
//                current = 1// set current back to 1
//                //print( substringCount + min(current,prev))
//            }
//        }
//        return substringCount + min(current,prev)
//    }
//
//countBinarySubstrings("10101010101101101001")

func disemvowel(_ s: String) -> String {
    let vowels = ["a","e","i","o","u","A","E","I","O","U"]
var str = s
    for i in vowels{
        str = str.split(separator: Character(i)).joined()
    }
return str
}
disemvowel("lebron is the greatest player of all time ")


/*

Write a function that accepts a string of words with a similar prefix, separated by spaces, and



returns the longest substring that prefixes all words.



Sample input and output



• The string “swift switch swill swim” should return “swi”.



• The string “flip flap flop” should return “fl”.

*/


//func accum(_ s: String) -> String {
//
//  return ""
//}

//func century(_ year: Int) -> Int {
//
//    return (year + 99) / 100
//}
//
//
//century(1769)


//This time no story, no theory. The examples below show you how to write function accum:

//Examples:
//
//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"
//The parameter of accum is a string which includes only letters from a..z and A..Z.


func accum(_ s: String) -> String {
   let arrS = (s)
    var counter = 1
    var holder = ""
    
    
   
    for i in arrS{
       
     holder += repeatElement(i, count: counter)
        holder = holder.capitalized
        holder += "-"
     counter+=1
        
        }
    holder.removeLast()
    
  return holder
    
}

accum("RqaEzty")


//func century(_ year: Int)->Int{
//    var count = 0
//    var x = year
//    
//    func club(_ x:Int) {
//        var x = x
//        if x<101{
//            return count+=1
//        }else {
//            x = x - 100
//            
//        }
//        club(x)
//    }
//    return count
//}
//
//century(2002)

DispatchQueue.global().async {
    print("Inside")
}
print("Outside")


let session = URLSession.shared
let url = URL(string: "...")!

func reverse(_ str:String)->String{
    
    let reversed = String(str.reversed())
    
    
    return reversed
    
}


reverse("1234")

func bmi(_ weight: Int, _ height: Double) -> String {
    let height_2 = pow(height, 2)
    
    let bmiFR = Double(weight)/height_2
    if bmiFR<=18.5 {
        return "Underweight"
    }else if bmiFR<=25.0{
        return "Normal"
    }else if bmiFR<=30.0{
        return "Overweight"
    }else {
        return "Obese"
    }
}

bmi(110, 1.80)





//The description is rather long but it tries to explain what a financing plan is.
//
//The fixed monthly payment for a fixed rate mortgage is the amount paid by the borrower every month that ensures that the loan is paid off in full with interest at the end of its term.
//
//The monthly payment formula is based on the annuity formula. The monthly payment c depends upon:
//
//rate - the monthly interest rate is expressed as a decimal, not a percentage. The monthly rate is simply the given yearly percentage rate divided by 100 and then by 12.
//
//term - the number of monthly payments, called the loan's term.
//
//principal - the amount borrowed, known as the loan's principal (or balance).
//
//First we have to determine c.
//
//We have: c = n /d with n = r * balance and d = 1 - (1 + r)**(-term) where ** is the power function (you can look at the reference below).
//
//The payment c is composed of two parts. The first part pays the interest (let us call it int) due for the balance of the given month, the second part repays the balance (let us call this part princ) hence for the following month we get a new balance = old balance - princ with c = int + princ.
//
//Loans are structured so that the amount of principal returned to the borrower starts out small and increases with each mortgage payment. While the mortgage payments in the first years consist primarily of interest payments, the payments in the final years consist primarily of principal repayment.
//
//A mortgage's amortization schedule provides a detailed look at precisely what portion of each mortgage payment is dedicated to each component.
//
//In an example of a $100,000, 30-year mortgage with a rate of 6 percents the amortization schedule consists of 360 monthly payments. The partial amortization schedule below shows with 2 decimal floats the balance between principal and interest payments.
//
//--    num_payment    c    princ    int    Balance
//--    1    599.55    99.55    500.00    99900.45
//--    ...    599.55    ...    ...    ...
//--    12    599.55    105.16    494.39    98,771.99
//--    ...    599.55    ...    ...    ...
//--    360    599.55    596.57    2.98    0.00
//Task:
//Given parameters
//
//rate: annual rate as percent (don't forgent to divide by 100*12)
//bal: original balance (borrowed amount)
//term: number of monthly payments
//num_payment: rank of considered month (from 1 to term)
//the function amort will return a formatted string (for example):
//
//"num_payment %d c %.0f princ %.0f int %.0f balance %.0f" (with arguments num_payment, c, princ, int, balance)
//
//In Common Lisp: return a list with num-payment, c, princ, int, balance each rounded.
//
//Examples:
//amort(6, 100000, 360, 1) ->
//"num_payment 1 c 600 princ 100 int 500 balance 99900"
//
//amort(6, 100000, 360, 12) ->
//"num_payment 12 c 600 princ 105 int 494 balance 98772"
