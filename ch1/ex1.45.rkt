#lang scheme

(define tolerance 0.0000001)
(define (compose f g)(lambda (x) (f (g x))))

(define (pow a b)
  (if(= b 0)
     1
     (* a (pow a (- b 1)))))

(define (average a b)(/ (+ a b) 2))

(define (average-damp f)(lambda (x) (average x (f x))))

(define (repeated-compose f n res)
  (if(= n 1)
     res
     (repeated-compose f (- n 1) (compose res f))
     ))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
 
(try first-guess))

(define (log2 n)(/ (log n) (log 2)))

(define (fixed-point-transform g transform guess)(fixed-point (transform g) guess))

(define (nth-root x n)(fixed-point-transform (lambda (y) (/ x (pow y (- n 1)))) (repeated-compose  average-damp (floor (log2 n)) average-damp)  1.0))

(nth-root 64 4) 


 
#|

(define (repeated proc n)
       (if( = n 1)
            proc 
            (repeated proc (- n 1))
          )
  )

((smooth square) 4)

((repeated (smooth square) 3) 4)
|#