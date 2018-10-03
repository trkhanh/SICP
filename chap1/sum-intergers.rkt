#lang racket
(define (sum-intergers a b)
  (if (> a b)
      0
      (+ a (sum-intergers (+ a 1) b))))

(sum-intergers 1 7)


