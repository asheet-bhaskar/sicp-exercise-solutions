#lang scheme

(define (divides? n t) (if(= (remainder n t) 0) true false))

(define (square x)(* x x))

(define (smallest-divisor n t)
  (cond
   ((> (square t) n) n)
   ((divides? n t) t)
   (else (smallest-divisor n (+ t 1)) )
    )
  )

(smallest-divisor 199 2)
(smallest-divisor 1999 2)
(smallest-divisor 19999 2)