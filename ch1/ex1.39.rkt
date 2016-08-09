#lang scheme
(define (sq x) (* x x))

(define (n x k)
  (if(= k 1) x (-(sq x))))

(define (d k)(- (* 2 k) 1))


(define (cont-frac x k)
   (define (frac i)
     ;(display (n x i))
     ;(display (d i))
            ;(newline)
     (if (< i k)
       (/ (n x i) (+ (d i)  (frac (+ i 1))) )
       (/ (n x i) (d i))
         )
     ) 
  (frac 1)
  )


(define pi 3.14)
(cont-frac (/ pi 6) 10)