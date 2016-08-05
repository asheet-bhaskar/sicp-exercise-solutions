#lang scheme



(define (fib2 a b n)
   (if (= n 0) b (fib2 (+ a b) a (- n 1)))
  )

(define (fib n)(fib2 0 1 n))


(define (pow2 a b r)
        (if (= b 1)
            r
            (pow2 a (- b 1) (* r a))
            )
  )
(define (pow a b) (pow2 a b a))



(define phi (/ (+ 1 2.23) 2))

(define psi (/ (- 1 2.23) 2))

(define num 20)

(fib num)
(/ (pow phi num) 2.23)
(- (pow phi num) (pow psi num))
(/ (- (pow phi num) (pow psi num)) 2.23)
psi
phi