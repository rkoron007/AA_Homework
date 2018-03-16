
function string_maker(verb,adj,noun){
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
};
string_maker('eat','green','potato')

function isSubstring(string, substring){
  return string.includes(substring)
};

function fizzBuzz(array){
  const fizzBuzzArr = [];
   array.forEach(el => {
     if ((el % 3 === 0) ^ (el % 5 === 0)) {
       fizzBuzzArr.push(el);
     }
   });


   return fizzBuzzArr;
};

function isPrime(number){
  if (number < 2) {return false}

  for (i = 2; i < number ; i++){
    if (number % i === 0) {
      return false;
    }
  };

  return true
};

function sumOfNPrimes(number){
  let sum = 0;
  let PrimeCount = 0;
  let i = 2;

  while ( PrimeCount < number ) {
    if (isPrime(i)) {
    sum += i;
    PrimeCount++;
    };
    i++
  };
  return sum
};
