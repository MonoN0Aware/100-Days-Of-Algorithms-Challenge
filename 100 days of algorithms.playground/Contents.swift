
//inArray
function inArray(array1,array2){
  var x;
  var y;
  var r = [];
  for (x = 0; x < array1.length; x++) {
    for (y = 0; y < array2.length; y++) {
      if(array2[y].includes(array1[x]) === true){
          r.push(array1[x]);
      }else{
      
      }
    }
  }
  r = [...new Set(r)];
  return r.sort();
}



//reverse Sequence
func reverseSeq(n: Int) -> [Int] {
  return (1...n).reversed()
}