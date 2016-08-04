;; How close the value of square root is depends on the factor in procedure "good-enough"?. if value of this factor
;  is very small then square roots of small numbers will be more precise but square roots of large numbers will not
;  be efficient as the number of recusrsion cycles will increase drastically. On the other hand if value of factor is large
; then recursion cycles will reduce but will result in less precision. 


; 

#lang scheme


(define (sq x)
  (* x x)
  )

(define (abs x)
       (if (< x 0)
           (- x)
           x
           )
  )


(define (improve g x)
       (/ (+ (/ x g) g) 2)
  )

(define (good-enough g og x)
      (if (< (abs (- g og)) (* g 0.0001))
          true
          false
          )
  )


(define (sqrt g og x)
        (if(good-enough g og x)
             g
             (sqrt (improve g x) g x)
           )
  )


(sqrt 1 4 1600)
; first arg: current guess
; second arg: old guess
; third arg: number