#lang scheme


(define (gcd a b)
    (if(= b 0)
       a
       (gcd b (remainder a b))
       )
  )
(define (rel-prime? a b)
  (= (gcd a b) 1)
  )

(define (inc a)(+ a 1))

(rel-prime? 9 3)(define (filtered-accumulate combiner null-value a b next)
   (if(>= a b)
     null-value
     (if(rel-prime? a b)
        (combiner a (filtered-accumulate combiner null-value (next a) b next))
        (filtered-accumulate combiner null-value (next a) b next)
        )
     )
  )


(filtered-accumulate * 1  2 6 inc)
(rel-prime? 5 6)