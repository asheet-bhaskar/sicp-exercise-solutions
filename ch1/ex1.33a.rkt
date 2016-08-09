#lang scheme

(define (square x) (* x x))
;; primality tests
(define (divides? n test)
     (if(= (remainder n test) 0 )
        true
        false
        )
  )
(define (smallest-divisor n test)
     (cond
         ((> (square test) n) n)
         ((divides? n test) test)
         (else (smallest-divisor n (+ test 1)))
       )
  )
(define (prime n)
    (if (= (smallest-divisor n 2) n)
          true
          false
        )
  )
(define (inc a)(+ a 1))
(define (filtered-accumulate combiner null-value a b next)
   (if(> a b)
     null-value
     (if(prime a)
        (combiner a (filtered-accumulate combiner null-value (next a) b next))
        (filtered-accumulate combiner null-value (next a) b next)
        )
     )
  )


(filtered-accumulate + 0  1 13 inc)