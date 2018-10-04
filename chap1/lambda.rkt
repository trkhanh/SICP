#lang racket
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) ( sum term (next a) next b))))

(lambda (x) (+ x 4))
(lambda (x) (/ 1.0 (* x (+ x 2))))

(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
       a
       (lambda (x) (+ x 4))
       b))

;;the procedure of argument x that adds x and 4
(define plus4 (lambda (x) (+ x 4)))

(define (square x) (* x x))

((lambda (x y z) (+ x y (square z))) 1 2 3)
;;


(define (f x y)
  (lambda (a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
  ((+ 1 (* x y))
   (- 1 y)))

(define (f1 x y)
  ;;varibles
  (let (
        (a (+ 1 (* x y)))
        (b (-1 y))
        )
    ;;body
    (+ (* x (square a))
       (* y b)
       (* a b))))


(define (func x y)
  (define a (+ 1 (* x y)))
  (define b (- 1 y))
  (+ (* x (square a))
     (* y b)
     (* a b)))

