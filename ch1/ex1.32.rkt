#lang scheme


;; a)


(define (inc a) (+ a 1))

(define (accumulate combiner null-value a b next)
  (if(> a b)
     null-value
     (combiner a (accumulate combiner null-value (next a) b next))
     )
  )

(accumulate * 1 1 4 inc)





;; b)


(define (accumulate-iter combiner null-value a b next res)
  (if(> a b)
     res
     (accumulate-iter combiner null-value (next a) b next (combiner res a ))
     )
  )

(accumulate-iter * 1 1 4 inc 1)