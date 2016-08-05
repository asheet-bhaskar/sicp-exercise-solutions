#lang scheme

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


( A 1 10)   ; 1024
(A 2 5)     ; 65536
(A 3 3)     ;65536

(define (g n) (A 1 n))
;A(1,3)
;A(0 ,A(1,2))
;A(0 ,A(0 ,A(1,1)))
;A(0 ,A(0 ,2))
;A(0 ,4)
;A(0 ,4)
;8

; mathematical expression will be 2^n

(define (h n) (A 2 n))

; A(2,3)
; A(1,A(2,2))
; A(1,A(1,A(2,1))
; A(1,A(1,2))
; A(1,4))
; 16

;; ; mathematical expression if n=1, h = 2 else h = 2^(2^(2^..... up to n times))
; 