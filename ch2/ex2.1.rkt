#lang scheme


(define (gcd a b)
  (if(= b 0)
     a
     (gcd b (remainder a b))
     )
  )


(define (abs x)
  (if(< x 0) (- x) x
     )
  )

 
(define (make-rat n d)
  (define g (gcd (abs n) (abs d)))
   (if(or (and (> n 0) (> d 0) ) (and (< n 0) (< d 0) )) (cons (abs (/ n g)) (abs (/ d g))) (if(< d 0) (cons (- (/ n g)) (abs (/ d g))) (cons (/ n g) (abs (/ d g))) ))
  )

(make-rat -2 6)