// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// var makes everything global so you cannot use it inside of other scope


// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// you cannot reassign constant !

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// name x is already taken by const cannot use same name

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// name x is already taken by let cannot use same name

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }
// cannot re assign as it says its out of block again and let is taken

//1
const madLib = (verb, adjective, noun) =>`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
console.log(madLib('make', 'best', 'guac'));
//"We shall MAKE the BEST GUAC."



//2
isSubstring=(sent,key)=>sent.includes(key)
 console.log(isSubstring("time to program", "time"))
//true
console.log(isSubstring("Jump for joy", "joys"))
//false

//3
fizzBuzz=array=>{
    return array.filter(num=>(num%3 ==0 || num%5 ==0) &&!(num%3 ==0 && num%5 ==0))
}

console.log(fizzBuzz([3,5,15]))


//4

isPrime=num=>{
    if(num<2){
        return false
    }
 for(let i=2 ;i<num;i++){
    if (num % i === 0)
    return false
   }
 return true
}

console.log(isPrime(2))
//true

console.log(isPrime(10))
//false

console.log(isPrime(15485863))
//true

console.log(isPrime(3548563))
//false


sumOfNPrimes = (num)=>{
  let sum = 0;
  let count = 0;
  for (let i = 2; count < num; i++) {
    if (isPrime(i)) {
      sum += i;
      count++;
    }
  }
  return sum;
}



console.log(sumOfNPrimes(0))
//0

console.log(sumOfNPrimes(1))
//2

console.log(sumOfNPrimes(4))
//17
