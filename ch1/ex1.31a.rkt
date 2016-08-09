#lang scheme

(define (product-rec a b)
   (if(> a b)
       1
       (* a (product-rec (+ a 1) b))
      )
  )

(define (factorial n)(product-rec 1 n))
(define (sq x)(* x x))
(define (next a)(+ a 2))

(define (num n k res )
  (if(= n 0)
     res
     (num (- n 1) (next k) (* res k (next k)))
  ))

(define (den n k res )
  (if(= n 0)
     res
     (den (- n 1) (next k) (* res (sq k)))
  ))


(define (pi-by-4 n)
  (/ (num n 2 1.0) (den n 3 1.0) ))

(pi-by-4 80)

(num 2 2 1 )