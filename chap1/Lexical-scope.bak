#lang racket
;;Block structure in lisp
(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))


(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x) (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))
#|

;;set x to free variable from internal definitions

(define (sqrt x)
  ;; internal x: lexical scope
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess x))))
  (sqrt-iter 1.0))
|#