function expt(b, n) {
    return expt_iter(b, n, 1);
}

function square(x) {
    return x * x;
}

function isEven(n) {
    return n % 2 !== 0 ? true : false;
}

function expt_iter(b, n, a) {
    if (n == 0) {
        return a;
    }
    if (!isEven(n)) {
        return expt_iter(square(b), n / 2, a);
    }
    if (isEven(n)) {
        return expt_iter(b, (n - 1), (a*b));
    }
}

console.log(expt(2, 2))