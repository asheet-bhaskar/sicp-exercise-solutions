#lang scheme

(define (square a)(* a a))

(define (eval a b)
  (if(and (number? a) (number? b))
     (+ (square a) (* 2 a b) (square b))
     (display "Enter any two integers")))

(eval 4 5)