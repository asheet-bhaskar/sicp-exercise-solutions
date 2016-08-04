#lang scheme
(define (square x)(* x x))

(define (sumsq a b) (+ (square a) (square b)))

(define (larger-two a b c)
        (if (> a b)
            (if (>= b c)
                (list a b)
                (list a c)
                )
            (if (>= a c)
                (list b a)
                (list b c)
                )
            )
  )


(define x (larger-two 1 2 3))

(sumsq (first x) (second x))





