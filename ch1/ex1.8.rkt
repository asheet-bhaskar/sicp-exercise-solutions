#lang scheme


(define (cube x)
  (* x x x)
  )

(define (abs x)
       (if (< x 0)
           (- x)
           x
           )
  )


(define (improve y x)
       (/ (+ (/ x (* y y)) (* 2 y)) 3)
  )

(define (good-enough y x)
      (if (< (abs (- (cube y) x)) 0.01)
          true
          false
          )
  )


(define (cbrt y x)
        (if(good-enough y x)
             y
             (cbrt (improve y x) x)
           )
  )


(cbrt 3 27)