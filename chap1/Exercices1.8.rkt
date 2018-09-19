#lang racket
#|
Exercise 1.8: Newton’s method for cube roots is based on
the fact that if y is an approximation to the cube root of x,
then a beer approximation is given by the value
x=y2 + 2y
3
:
Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In Section 1.3.4 we will
see how to implement Newton’s method in general as an
abstraction of these square-root and cube-root procedures.)
|#

(define (square x)
    (* x x))

(define (improve y x)
  (/ (+ (/ x (square y)) (* 2 y))
     3))

(define (good-enough? guess previous)
  (> (/ (min guess previous) (max guess previous)) 0.99))

(define (cbrt-iter guess previous x)
  (if (good-enough? guess previous)
      guess
      (cbrt-iter (improve guess x)
                 guess
                 x)))

(define (cbrt x)
  (cbrt-iter 1.0 x x))