#lang racket
;;recursive process
#|
(define (recursive n)
  (if (< n 3)
      n
      (+ (recursive (- n 1))
         (* 2 (recursive (- n 2)))
         (* 3 (recursive (- n 3))))))

(recursive 4)
|#
;;iterative process
 (define (f n) 
   (define (iter a b c count) 
     (if (= count 0) 
       a 
       (iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))) 
   (iter 0 1 2 n))

(f 4)