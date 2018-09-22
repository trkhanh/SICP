#lang racket
 ;; ex 1.12 
  
 (define (pascal-triangle row col) 
   (cond ((> col row) 0) 
         ((< col 0) 0) 
         ((= col 1) 1) 
         ((+ (pascal-triangle (- row 1) (- col 1)) 
             (pascal-triangle (- row 1) col))))) 
  
 ;; Testing 
 
 (pascal-triangle 5 3) 
  