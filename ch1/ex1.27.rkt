#lang scheme


(define (square x) (* x x))


(define (expmod base exp m)
(cond ((= exp 0) 1)
((even? exp)
(remainder (square (expmod base (/ exp 2) m))
m))
(else
(remainder (* base (expmod base (- exp 1) m))
m))))


(define (fermat-test n)
  
(define (try-it a)
(= (expmod a n n) a))
  
(try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
(cond ((= times 0) true)
((fermat-test n) (fast-prime? n (- times 1)))
(else false)))


;561, 1105, 1729, 2465, 2821, 6601

(define vect (vector 11 12 13 14))

(fast-prime? 561 20)       ;divisible by 3
(fast-prime? 1105 20)
(fast-prime? 1729 20)
(fast-prime? 2465 20)
(fast-prime? 2821 20)
(fast-prime? 6601 20)