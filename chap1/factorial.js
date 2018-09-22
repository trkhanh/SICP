//A linear recursive process for computing
function factorial(n) {
    if (n === 1) {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
console.log(factorial(6)); //6!=720


//A linear iterative process for computing
function fact_iter(product, counter, max_count) {
    for (let index = counter; index < max_count; index++) {
        counter = index;
        product += product * counter;
    }
    return product;
}

function factorial_version1(n) {
    return fact_iter(1, 1, n)
}

console.log(factorial_version1(6))

//vs another way to iterative 
function fact_iter_2(product, counter, max_count) {
    if (counter > max_count) {
        return product
    } else {
        return fact_iter_2(counter * product, counter + 1, max_count)
    }
}

function factorial_version2(n) {
    return fact_iter_2(1, 1, n)
}
console.log(factorial_version2(6))

//vs another way to iterative 
//Why this way not work? Quan please help me ?? 

// function factorial_version3(n) {
//     function iter(product, counter) {
//         if (counter > n) {
//             return product
//         } else {
//             return iter(counter * product, counter + 1)
//         }
//     }
//     return iter(1, 1);
// }
// console.log(factorial_version3(6))

function factorial_version3(n) {
    //function is object => Should we modify (const) it or resize it (let). 
    const iter = (product, counter) => {
        if (counter > n) {
            return product
        } else {
            return iter(counter * product, counter + 1)
        }
    }
    return iter(1, 1);
}

console.log(factorial_version3(6));