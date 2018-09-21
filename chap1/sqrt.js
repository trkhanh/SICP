function square(x) {
    return x * x;
}

function average(x, y) {
    return (x + y) / 2;
}

// function sqrt(x) {
//     const goodEnough = (guess, x) => {
//         return Math.abs(square(guess) - x) < 0.001;
//     }

//     const improve = (guess, x) => {
//         return average(guess, (x / guess));
//     }

//     const sqrtIter = (guess, x) => {
//         if (goodEnough(guess, x)) {
//             return guess;
//         } else {
//             return sqrtIter(improve(guess, x), x);
//         }

//     }
//     return sqrtIter(1.0, x);
// }

// console.log(sqrt(9))

//Apply lexical scope
function sqrt(x) {
    console.log(x);
    const goodEnough = (guess) => {
        return Math.abs(square(guess) - x) < 0.001;
    }

    const improve = (guess) => {
        return average(guess, (x / guess));
    }

    const sqrtIter = (guess) => {
        if (goodEnough(guess)) {
            return guess;
        } else {
            return sqrtIter(improve(guess, x));
        }

    }
    return sqrtIter(1.0);
}

console.log(sqrt(9))


