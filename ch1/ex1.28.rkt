#lang scheme

(define (square x m)
   (if(and (not (or (= x (- m 1)) (= x 1))) (= (remainder (* x x) m) 1))
      0
      (* x x)
      ))
  
 
(define (exp-mod b e m)
  (cond
    ((= e 0) 1)
    ((even? e) (remainder (square (exp-mod b (/ e 2) m) m) m ))
    (else (* b (remainder (exp-mod b (- e 1) m) m )) )
    )
  )

(define (millar-rabin n)
   (define (try a) (= (exp-mod a n n ) 1))
    (try (+ 2 (random (- n 2)))))
 


;(define vect (vector 561 1105 1729 2465 2821 6601))
(millar-rabin 561)
(millar-rabin 1105)
(millar-rabin 1729)
(millar-rabin 2465)
(millar-rabin 2821)
(millar-rabin 6601)