#lang racket

(define(sum-of-squares x y)(+ x y))
(sum-of-squares 2 7)

(define (f a)
 (sum-of-squares (+ a 1) (* a 2)))
(f 5)

(define (square b) (* b b))
(print (+ (square 6) (square 6)))


(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))


(define (abs_v1 x)(
   (cond ((< x 0) (- x))(else x))))

(define (abs_v2 x)
  (if (< x 0) (- x) x))

(define (>= x y) (or (> x y) (= x y)))
(define (>= x y) (not (< x y)))