#lang scheme

(define (pow a b)
  (if(= b 0)
     1
     (* a (pow a (- b 1))))
  )

(define (cons a b)
  (if (and (>= a 0) (>= b 0)) (* (pow 2 a) (pow 3 b)) (display "This works only for non-negative integers"))
  )

(define (get-num z n)
  (if(= (remainder z n) 0)
     (+ 1 (get-num (/ z n) n))
     0
     )
  )

(define (car z)(get-num z 2))

(define (cdr z)(get-num z 3))

(define pair (cons 0 4))

(car pair)

(cdr pair)