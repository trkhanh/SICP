function square(x) {
    return x * x;
}

function average(x, y) {
    return (x + y) / 2;
}

function sqrt(x) {
    const goodEnough = (guess, x) => {
        return Math.abs(square(guess), x);
    }

    const improve = (guess, x) => {
        return average(guess, (x / guess));
    }

    const sqrtIter = (guess, x) => {
        if (goodEnough(guess, x)) {
            return guess;
        } else {
            sqrtIter(improve(guess, x), x);
        }
        
    }
    sqrtIter(1.0, x);
}

console.log(sqrt(9))