#lang racket
(define (cube n) (* n n n))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) ( sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))

(sum-cubes 1 10)

;; pi sum intergers 
(define (indentity x) x)
(define (sum-intergers a b)
  (sum indentity a inc b))

(sum-intergers 1 10)

;; pi sum 
(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))
(* 8 (pi-sum 1 1000))


;; F(a->b)f=[f(a+dx/2) + f(a+dx+dx/2)+....]dx
(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))
(integral cube 0 1 0.01)
(integral cube 0 1 0.001)