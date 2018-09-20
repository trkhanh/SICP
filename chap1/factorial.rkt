#lang racket
;;factorial

;;n!=n.[(n-1)(n-2)..3.2.1]= n(n-1)!
;;A linear recursive process for computing
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial(- n 1)))))

(factorial 6)

;;A linear iterative process for computing
(define (factorial-v1 n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(factorial-v1 6)
;;Apply lexical scope
(define (factorial-v2 n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))