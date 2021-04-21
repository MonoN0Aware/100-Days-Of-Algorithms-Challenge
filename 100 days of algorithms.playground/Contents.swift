//
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

func repeatStr(_ n: Int, _ string: String) -> String {
    if string == ""{
        return ""
    }else if n == 0{
       return ""
    }

 else{
        var strArr = Array(string)
        var count = 0

        while count<n-1{
            //strArr.remove(at: 1)
            strArr.append(contentsOf: string)
            count+=1

        }

        return  String(strArr)

    }
}
repeatStr(10, "ay")

//persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
//                       // and 4 has only one digit
//
// persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
//                        // 1*2*6 = 12, and finally 1*2 = 2
//
// persistence(for: 4) === 0 // because 4 is already a one-digit number


var count = 0
func persistence(for num: Int) -> Int {
    if num < 10{
        return 0
    }
    
    else{
        let numtoArr = String(num)
        let numToArrDigits = numtoArr.compactMap{$0.wholeNumberValue}
        let total = numToArrDigits.reduce(1, *)
       // print(total)
        if total >= 10{
            persistence(for:total)
        }
    }
    count+=1
   // print(count)
    return count
}




persistence(for:3999)



//21 APRIL ALGORITHM END




