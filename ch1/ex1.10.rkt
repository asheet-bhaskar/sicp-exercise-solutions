#lang scheme

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


( A 1 10)   ; 1024
(A 2 4)     ; 65536
(A 3 4)     ;65536


(define (f n) (A 0 n))
;  mathematical definition = 2n


(define (g n) (A 1 n))
; (A 1 n)
; (A 0 (A 1 (n-1)))                
; (A 0 (; (A 0 (A 1 (n-2)))  ))

;; this will keep on growing till x = 1 and y = 0 that will result into 0

(define (h n) (A 2 n))

;  (A 1 (A 2 (- n 1)))
;  (A 1 (A 1 ( A 2 (- n 2))))
;  
;  mathematical definition  = 8(n-2)

;; this will keep on growing till x = 2 and y = 0 that will result into 0
