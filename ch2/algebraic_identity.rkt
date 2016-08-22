#lang scheme


(define (eval a b)
  (if(and (number? a) (number? b))
     (+ (* a a) (* 2 a b) (* b b))
     (display "Enter any two integers")))

(eval "a" 3)