#lang scheme

; pascal's triangle
; rows 0,1,2,3,.....
; elements  0,1,2,3,4,.........
; eth element in rth row is rCe   (P&C)

(define (fact n)
     (if(<= n 1)
          1
          (* n (fact (- n 1)))
        )
  )





(define (rth-eth  r e )
    (if (<= e (+ r 1))
      (/ (fact r) (* (fact e) (fact (- r e))))
      0
    )
  )

(define r 4)
(define e 3)

(rth-eth r e)