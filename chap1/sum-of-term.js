function sum(term, next) {
    console.log(term);
    if (a > b) {
        return 0;
    } else {
        return term(a) + sum(term(next(a)), next(b));
    }
}

function inc(n) {
    return n + 1;
}

function cube(x) {
    return x * x * x;
}

function sumCubes(a, b) {
    return sum(cube(a), inc(b))
}

console.log(sumCubes(1, 3));