#lang scheme

;; Recursive

(define (f n)
       (if(< n 3)
          n
          (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))
          )
  )

(f 0) ;0
(f 1)  ; 1
(f 2)   ; 2
(f 3)  ; 4  = 3*0 + 2*1 +2
(f 4)  ;11  = 3*1 + 2*2 + 4
(f 6)  ;  25  = 3*2 + 2*4 + 11


;; Iterative 
(define (f2 a b c n )
        (if(< n 3)
            c
           (f2 b c (+ (* 3 a) (* 2 b) c) (- n 1))
         )
  )

;  f(4)  = f(3) + f(2) + f(1)
;      f(2) + f(1) + f(0)  

(f2 0 1 2 6)