;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname review-1.7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 1.7.

; The good-enough? test used in computing square roots will not be very
; effective for finding the square roots of very small numbers. Also, in real
; computers, arithmetic operations are almost always performed with limited
; precision.
;
; This makes our test inadequate for very large numbers. Explain these
; statements, with examples showing how the test fails for small and large
; numbers.

; If good-enough? is used to search for a square root that is very small, the
; difference between guess^2 and x may be smaller than 0.001, yet not a good
; approximation for √x. For example:

(sqrt 0.000001)

; results in 0.031260655525445276 whereas the correct answer would be 0.001.

; Similarly, for very large input values, the program may never terminate.
; e.g.

(sqrt 20000000000000000)

; Since limited precision floating point numbers are used and once guess is
; sufficiently large enough, the difference to the 'next' floating point number
; may bigger than 0.001. In this case, good-enough? will return false but
; improve won't be able to produce a closer match, trapping the procedure in an
; endless loop.

; An alternative strategy for implementing good-enough? is to watch how guess
; changes from one iteration to the next and to stop when the change is a very
; small fraction of the guess.

; Design a square-root procedure that uses this kind of end test. Does this work
; better for small and large numbers?

(define (square x)
    (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess previous)
  (> (/ (min guess previous) (max guess previous)) 0.99))

(define (sqrt-iter guess previous x)
  (if (good-enough? guess previous)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x x))

(sqrt 0.000001) ; results in 0.0010000001533016628

(sqrt 20000000000000000) ; 141421428.14615405