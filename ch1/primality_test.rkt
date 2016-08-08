#lang scheme


(define (square x) (* x x))
;; primality tests
(define (divides? n test)
     (if(= (remainder n test) 0 )
        true
        false
        )
  )
(define (smallest-divisor n test)
     (cond
         ((> (square test) n) n)
         ((divides? n test) test)
         (else (smallest-divisor n (+ test 1)))
       )
  )
(define (prime n)
    (if (= (smallest-divisor n 2) n)
          true
          false
        )
  )

(prime 11)


;; fermats litlle algo



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

(fast-prime? 10 10)