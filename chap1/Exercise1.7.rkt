#lang racket
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))
(define (square x)(* x x))
(define (sum-of-square x y)(+ (square x) (square y)))

(define (exe13 a b c)(
     cond ((> (and a b) c) (sum-of-square a b))
          ((> (and a c) b) (sum-of-square a c))
          ((> (and c b) a) (sum-of-square b c))
   ))


(exe13 5 3 1)

;;; The way to implement sqrt
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))


(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)(sqrt-iter 1.0 x))

(sqrt 9)

#|
 How to define If 
|#
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (< 2 3) 0 5)


#|
 Rewrite the square-root program
|#
(define (sqrt-iter-new guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-new (improve guess x) x)))

(define (sqrt-new x)(sqrt-iter-new 1.0 x))
