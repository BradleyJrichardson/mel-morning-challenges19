/*
Values
Return all of the values of the object's own properties.
Example:
values({one: 1, two: 2, three: 3});
=> [1, 2, 3]
*/

// Your code here!
const values = () => {
}

// There are tests written for this challenge
// You'll need to npm install mocha (a javascript testing library) as a development dependency for the test to run
// This is the code you'll need to run on the command line, npm install --save-dev mocha
// You can then check your solution by running these tests by running mocha 2019_05_17_values.js on the command line

const assert = require('assert');

describe('Values', () => {
  it('can extract the values from an object', () => {
    const result = values({one: 1, two: 2});
    assert.deepEqual(result, [1, 2]);
  });
  it('... even when one of them is "length"', () => {
    const result = values({one: 1, two: 2, length: 3});
    assert.deepEqual(result, [1, 2, 3]);
  });
});

