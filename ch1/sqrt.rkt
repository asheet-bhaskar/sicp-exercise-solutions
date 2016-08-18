#lang scheme

(define tolerance 0.00001)

(define (square x)(* x x ))

(define (average a b)(/ (+ a b) 2))


(define (sqrt n)
   (define (improve g n)(average g (/ n g)))
   (define (good-enough? g x)
     (if (< (abs (- (square g) x)) tolerance)
         true
         false
         ) )
   (define (try g n)
     (cond
       ((good-enough? g n) g)
       ((< n 0) (display "Provide a non-negative number"))
       (else
          (try (improve g n) n)
         )
       ))
    (try 1.0 n)
  )


(sqrt 2.5) 