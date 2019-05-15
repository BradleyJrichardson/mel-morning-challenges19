// 2. Write a Javascript terminal app that will convert decimal to Base 8 without using any built in functions

// ! warning comment
// * green comment
// TODO dsfgsdfgs

// Convert a number from decimal to another base below 10
const fromDecimal = (num, base) => {
  let buffer = [];
  while (num > base - 1) {
    buffer.unshift(num % base);
    num = Math.floor(num / base);
  }
  buffer.unshift(num);
  return buffer.join("");
};

// Error handling
if (process.argv.length !== 4 || process.argv[3] > 10) {
  console.log("Usage: node bases.js <number> <target base 1..10>");
  process.exit();
}

// Get input from command line
const number = process.argv[2];
const base = process.argv[3];

const result = fromDecimal(number, base);
console.log(result);
