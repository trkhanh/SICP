#lang racket
;; This version require theta(n) steps and space theta(n)
;  ;b · (b · (b · (b · (b · (b · (b · b)))))) ;
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b(- n 1)))))

;; This version require theta(n) steps and space theta(1)

(define (expt_iter b n)
  iter b n 1)
(define (iter b counter product)
  (if(= counter 0)
     product
     (iter b (- counter 1) (* b product))))



;;;; b2 = b · b;
;; b4 = b2 · b2;
;; b8 = b4 · b4
(define (square x)
  (* x x))

(define (even? n)
(= (remainder n 2) 0))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n -1))))))