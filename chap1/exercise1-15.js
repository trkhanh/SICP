function cube(x) {
    return x * x * x;
}
let b=0;
function p(x) {
    b++;
    console.log('p:'+((3 * x) - (4 * cube(x))));
    return ((3 * x) - (4 * cube(x)));
}

function sine(angle) {
    console.log(Math.abs(angle));
    if (!(Math.abs(angle) > 0.1)) {
        return angle;
    } else {
        return p(sine(angle / 3.0));
    }
}

console.log('R:'+sine(12.15*3*3*3));
console.log(b);