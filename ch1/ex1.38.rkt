#lang scheme



(define (d k)
  (if( = (remainder (+ k 1) 3) 0)
     (/ (* 2 (+ k 1)) 3)
     1
     )
  )

(define (cont-frac n  k)
   (define (frac i res)
     (if (= i  0)
       res
       (frac (- i 1) (/ (n i) (+ (d i) res))
         )
     ))
  (frac (- k 1) (/ (n k) (d k)))
  )



(cont-frac (lambda (i) 1.0)  5)


;; 1 2 1 1 4 1 1 6 1 1 8 1 1 10 1

;; positions 2 5 8 11
;; if (i+1) is divisible by 3 than return 2(i+1) / 3