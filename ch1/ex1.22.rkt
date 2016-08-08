#lang scheme

;;
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
;;

(define (timed-prime-test n)
(newline)
(display n)
(start-prime-test n (current-inexact-milliseconds)))

(define (start-prime-test n start-time)
(if (prime n)
(report-prime (- (current-inexact-milliseconds) start-time))
 false
)) 

(define (report-prime elapsed-time)
(display " *** ")
(display elapsed-time))


;(if(timed-prime-test 4) true false)


(define (odd? n)(if(= (remainder n 2) 0)
                   false
                   true
                   ))
(define (search n)
   (if(odd? n)
      (if(prime n)
         (timed-prime-test n)
      (search (+ n 1)
              ))
      (search (+ n 1))
      )
  )

(search 1014)

; 1009 *** 0.053955078125
;1013 *** 0.02197265625
; 1019 *** 0.054931640625


; 10007 *** 0.154052734375
; 10009 *** 0.06591796875
; 10037 *** 0.044921875

; 100003 *** 0.088134765625
; 100019 *** 0.093017578125
; 100043 *** 0.067138671875


; 1000003 *** 0.099853515625
; 1000033 *** 0.10302734375
; 1000037 *** 0.14697265625