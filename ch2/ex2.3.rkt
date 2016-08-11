#lang scheme

(define tolerance 0.001)

(define (sq x)(* x x))

(define (avg a b)(/ (+ a b) 2))

(define (iterative-improve good-enough? improve )
  (define (iter-imp x)
    (if(good-enough? x)
         x
         (iter-imp (improve x))
       )
    ) iter-imp
  )
 
(define (sqrt x)
  ((iterative-improve
   (lambda (guess) (< (abs (- (sq guess) x))tolerance))
   (lambda (guess) (avg guess (/ x guess)))
   ) 1.0)
  )

(define (make-point x y)(cons x y))

(define (x-point p)(car p))

(define (y-point p)(cdr p))

(define (rectangle p1 p2 p3 p4)(cons (cons p1 p2) (cons p3 p4)))

(define (length-of-segment p1 p2)
  (sqrt ( + (sq (- (car p1) (car p2)))  (sq (- (cdr p1) (cdr p2)))))
  )
(define (len r) (length-of-segment (car (car r)) (cdr (car r)) ))
(define (wid r) (length-of-segment (cdr (car r)) (car (cdr r)) ))

(define (area r)(* (len r) ( wid r)) )

(define (perimeter r)
   (* 2 (+ (len r) ( wid r)))
  )
  
  
(define p1 (make-point 2 8))
(define p2 (make-point 10 8))
(define p3 (make-point 10 2))
(define p4 (make-point 2 2))

(define rect (rectangle p1 p2 p3 p4))


(len rect)
(wid rect)

(area rect)
(perimeter rect)










;(length-of-segment p1 p2)
;(length-of-segment p2 p3)



#|
(car (car rect))

(cdr (car rect))

(car (cdr rect))
(cdr (cdr rect))

(cons (cons p1 p2) (cons p3 p4))
|#