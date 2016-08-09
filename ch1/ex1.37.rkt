#lang scheme

(define (cont-frac n d k)
   (define (frac i)
     (if (< i k)
       (/ (n i) (+ (d i) (frac (+ i 1))))
       (/ (n i) (d i))
         )
     )
  (frac 1)
  )



(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 5)