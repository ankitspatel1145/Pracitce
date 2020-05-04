// A Pyramid Descent Puzzle consists of a pyramid of positive integers.
// To solve the puzzle, you must find a path that traverses the pyramid 
// from top to bottom visiting numbers whose product is a given target value.
// Each step in the path must go down one row, and go either one step to the 
// left or one step to the right.

// For example, suppose the pyramid below has a target value of 2.


// A solver for this puzzle should output LR,
//  indicating that the correct path starts from the 1 on top,
//   goes Left to the 2 on the second row, then goes Right to the 
//   1 in the center of the bottom row. (Note in particular that the 
//     successful path cannot go through the 1 at the end of the bottom row.)
//      This gives the path shown in red below:


// In your language of choice, write a solver that can solve any pyramid 
// descent puzzle.
// Your solver can assume that every input pyramid has a
// first row with one number and every row thereafter has one more 
// number than the row above.Each row is aligned such that the center 
// of the row aligns with the midline of the pyramid(as shown in the 
// samples above and below).

// Below is a sample pyramid with target 720 along with the sample
//  program input and output for this puzzle.

//        [2], 'LRLL'
//      [4, 3], 'RLL'
//     [3, 2, 6], 'LL'
//   [2, 9, 5, 2], 'L'
// [10, 5, 2, 15, 5]
// target = 720 
// answer = LRLL

function pyramidTraverse(pyramid, target, currIdx=0, product=1, side='') {
    if (pyramid.length === 0) return null;
    if (pyramid.length === 1 && pyramid[0][currIdx] * product === target) return side

    let row = pyramid[0];
    let currNum = row[currIdx]
    // pyramid[1];
    let left = pyramid[1][currIdx];
    let newProd = currNum * product;
    if (left) {
        let leftProd = pyramidTraverse(pyramid.slice(1), currIdx, target, newProd, 'L');
        if (leftProd) return side + leftProd;
    }

    let right = pyramid[1][currIdx + 1]
    if (right) {
        let rightProd = pyramidTraverse(
          pyramid.slice(1),
          currIdx + 1,
          target,
          newProd,
          "R"
        );
        if (rightProd) return side + rightProd;
    }
    

}


// Find the intersection of two arrays.An intersection would be the common
//  elements that exists within both arrays.In this case, these elements should be unique!

// Example:

const firstArray = [2, 2, 4, 1];
const secondArray = [1, 2, 0, 2];

// create object intersects
// iterate through first array and create key value pairs for each num, set value = 1;
// iterate through the second array, check the current num agains our intersects object, if its a key
  // subtract 1 from the value;
// results = Object.keys(intersects).every { |key| intersects[key] <= 0 }
// return results

function intersection(firstArray, secondArray) {
  let intersect = {};

  for (let i = 0; i < firstArray.length; i++) {
    let num = firstArray[i];
    intersect[num] = 1;
  }

  for (let i = 0; i < secondArray.length; i++) {
    let num = secondArray[i];
    if (intersect[num] !== undefined) intersect[num] -= 1;
  }

  let keys = Object.keys(intersect);

  let result = [];

  for (let i = 0; i < keys.length; i++) {
    if (intersect[keys[i]] <= 0) result.push(keys[i])
  }
  // console.log(result)
  return result;
}; // Output: [2, 1]

// console.log(intersection(firstArray, secondArray))

// full binary search tree
// height 6
// if node has failed, it is unreachable
// 


// Largest Difference
// Given an array of integers, find the largest difference between two elements such that the element of lesser value must come before the greater element. Complete this problem in O(n) time.

// Examples:

function findLargestDifference(arr) {
  let min = new Array(arr.length).fill(Infinity);
  min[0] = arr[0]
  for (let i = 0; i < arr.length; i++) {
    min[i] = Math.min(min[i], arr[i - 1])
  }

  let max = new Array(arr.length).fill(-Infinity);

}

// findLargestDifference([1, 6, 5, 2, 9, -2])

// // Output is 8 based on the difference between 1 and 9. Note: It is not 11 from 9 and -2 because 9 comes before -2.