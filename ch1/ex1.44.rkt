#lang scheme

(define (compose f g)(lambda (x) (f (g x))))

(define dx 0.00001)


(define (square x)(*  x x))

(define (smooth fun)
  (lambda (x) (/ (+ (fun (- x dx)) (fun x) (fun (+ x dx)))3)))


(define (repeated proc n)
       (if( = n 1)
            proc
            (repeated proc (- n 1))
          )
  )

((smooth square) 4)

((repeated (smooth square) 3) 4)