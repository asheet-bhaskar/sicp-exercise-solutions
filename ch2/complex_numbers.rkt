#lang scheme

(define (square x) (* x x))

(define (make-C real img)(cons real img))

(define (real-part c)(car c))

(define (img-part c)(cdr c))

(define (add c1 c2)(cons (+ (car c1) (car c2)) (+ (cdr c1) (cdr c2))))

(define (sub c1 c2)(cons (- (car c1) (car c2)) (- (cdr c1) (cdr c2))))

(define (mul c1 c2)(cons (- (* (car c1) (car c2)) (* (cdr c1) (cdr c2))) (+ (* (car c1) (cdr c2)) (* (car c2) (cdr c1)) ) ))

(define (div c1 c2)
  (if( = (+  (square (car c2)) (square (cdr c2)) ) 0)
      (display "Division not defined")
          (cons (/ (+ (* (car c1) (car c2)) (* (cdr c1) (cdr c2)) ) (+  (square (car c2)) (square (cdr c2)) ) ) (/ (- (* (cdr c1) (car c2)) (* (car c1) (cdr c2)))  (+  (square (car c2)) (square (cdr c2)) ) ) )
     ))
  


(define c1 (make-C 5.0 6.0))
(define c2 (make-C 2 4))

(div c1 c2) 
