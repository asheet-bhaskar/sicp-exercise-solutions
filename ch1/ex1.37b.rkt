#lang scheme

(define (cont-frac n d k)
   (define (frac i res)
     (if (= i  0)
       res
       (frac (- i 1) (/ (n i) (+ (d i) res))
         )
     ))
  (frac (- k 1) (/ (n k) (d k)))
  )



(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 5)