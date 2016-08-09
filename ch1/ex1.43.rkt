#lang scheme

(define (square x) (* x x))

(define (compose f g)(lambda (x) (f (g x))))

(define (repeated proc n)
       (if( = n 1)
            proc
            (compose proc (repeated proc (- n 1)))
          )
  )

((repeated square 3) 2)