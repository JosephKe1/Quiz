// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.


var even = function(n) {
  var output = [];
  for (var i=0; i<2*n; i+=2) {
      output.push(i);
    }
    return output;
  };

console.log(even(11));
