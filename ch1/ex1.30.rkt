#lang scheme




(define (cube n)(* n n n))

(define (term a k h)( + a (* k h)))

(define (even? n)
  (= (remainder n 2)0)
  )
(define (odd? n)
  (not (= (remainder n 2)0))
  )
(define (multiplier k n)
  (cond
    ((or (= k 0) (= k n)) 1)
    ((odd? k) 4)
    ((even? k) 2)
    ))

(define (inc a)(+ a 1))

(define (series a f h n k res)
  (if(= k n)
     res
     (series a f h n (+ k 1) (+ res (* (multiplier k n) (cube (term a k h)))))
     )
  )

(define (simpson  a b n)
  (define h (/ (- b a) n))
  (* (/ h 3) (series a cube h n 0 1))
  )

(simpson 0 1 100.0)


; n = 100 ;; res = 0.2466666666666666
; n = 1000 ;; res = 0.24966666666666693



